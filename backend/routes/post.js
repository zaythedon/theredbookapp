const express = require("express");
const router = express.Router();
const db = require("../database");

// Get all posts
router.get("/", async (req, res, next) => {
  try {
    const [posts] = await db.query("SELECT * FROM posts");
    res.json(posts);
  } catch (err) {
    next(err);
  }
});

// Get a single post by ID
router.get("/:id", async (req, res, next) => {
  try {
    const { id } = req.params;
    const [post] = await db.query("SELECT * FROM posts WHERE post_id = ?", [
      id,
    ]);
    if (post.length) {
      res.json(post[0]);
    } else {
      res.status(404).json({ message: "Post not found." });
    }
  } catch (err) {
    next(err);
  }
});

// Create a new post
router.post("/", async (req, res, next) => {
  try {
    const { userId, text, imageUrl, videoUrl } = req.body;
    const result = await db.query(
      "INSERT INTO posts (user_id, text, image_url, video_url, timestamp) VALUES (?, ?, ?, ?, CURRENT_TIMESTAMP)",
      [userId, text, imageUrl, videoUrl]
    );
    res.status(201).json({
      message: "Post created successfully.",
      postId: result[0].insertId,
    });
  } catch (err) {
    next(err);
  }
});

// Update a post
router.patch("/:id", async (req, res, next) => {
  try {
    const { id } = req.params;
    const { text, imageUrl, videoUrl } = req.body;

    let updateFields = [];
    let queryParams = [];

    if (text) {
      updateFields.push("text = ?");
      queryParams.push(text);
    }
    if (imageUrl) {
      updateFields.push("image_url = ?");
      queryParams.push(imageUrl);
    }
    if (videoUrl) {
      updateFields.push("video_url = ?");
      queryParams.push(videoUrl);
    }

    if (updateFields.length === 0) {
      return res
        .status(400)
        .json({ message: "No valid fields provided for update." });
    }

    queryParams.push(id);
    let query = `UPDATE posts SET ${updateFields.join(", ")} WHERE post_id = ?`;

    const result = await db.query(query, queryParams);

    if (result[0].affectedRows) {
      res.status(200).json({ message: "Post updated successfully." });
    } else {
      res
        .status(404)
        .json({ message: "Post not found or no changes provided." });
    }
  } catch (err) {
    next(err);
  }
});

// Delete a post
router.delete("/:id", async (req, res, next) => {
  try {
    const { id } = req.params;
    const result = await db.query("DELETE FROM posts WHERE post_id = ?", [id]);
    if (result[0].affectedRows) {
      res.status(200).json({ message: "Post deleted successfully." });
    } else {
      res.status(404).json({ message: "Post not found." });
    }
  } catch (err) {
    next(err);
  }
});

module.exports = router;
