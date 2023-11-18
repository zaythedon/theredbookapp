const express = require("express");
const router = express.Router();
const db = require("../database");

// Like a post
router.post("/posts/:postId/likes", async (req, res, next) => {
  try {
    const { postId } = req.params;
    const { userId } = req.body;

    // Check if the post already liked by the user to prevent duplicate likes
    const [existing] = await db.query(
      "SELECT * FROM likes WHERE post_id = ? AND user_id = ?",
      [postId, userId]
    );

    if (existing.length > 0) {
      return res.status(409).json({ message: "Post already liked." });
    }

    const result = await db.query(
      "INSERT INTO likes (post_id, user_id, created_at) VALUES (?, ?, CURRENT_TIMESTAMP)",
      [postId, userId]
    );

    res.status(201).json({
      message: "Post liked successfully.",
      likeId: result[0].insertId,
    });
  } catch (err) {
    next(err);
  }
});

// Unlike a post
router.delete("/posts/:postId/likes", async (req, res, next) => {
  try {
    const { postId } = req.params;
    const { userId } = req.body;

    const result = await db.query(
      "DELETE FROM likes WHERE post_id = ? AND user_id = ?",
      [postId, userId]
    );

    if (result[0].affectedRows) {
      res.status(200).json({ message: "Post unliked successfully." });
    } else {
      res.status(404).json({ message: "Like not found or already removed." });
    }
  } catch (err) {
    next(err);
  }
});

module.exports = router;
