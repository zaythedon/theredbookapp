const express = require("express");
const router = express.Router();
const db = require("../database");

// Get all comments for a post
router.get("/posts/:postId/comments", async (req, res, next) => {
  try {
    const { postId } = req.params;
    const [comments] = await db.query(
      "SELECT * FROM comments WHERE post_id = ?",
      [postId]
    );
    res.json(comments);
  } catch (err) {
    next(err);
  }
});

// Create a new comment on a post
router.post("/posts/:postId/comments", async (req, res, next) => {
  try {
    const { postId } = req.params;
    const { userId, content } = req.body;
    const result = await db.query(
      "INSERT INTO comments (post_id, user_id, content, created_at) VALUES (?, ?, ?, CURRENT_TIMESTAMP)",
      [postId, userId, content]
    );
    res.status(201).json({
      message: "Comment created successfully.",
      commentId: result[0].insertId,
    });
  } catch (err) {
    next(err);
  }
});

// Update a comment
router.patch("/comments/:commentId", async (req, res, next) => {
  try {
    const { commentId } = req.params;
    const { userId, content } = req.body;

    // TODO: Validate the commentId and content
    // TODO: Authenticate the user to make sure they have permission to update the comment

    const [comment] = await db.query(
      "SELECT * FROM comments WHERE comment_id = ? AND user_id = ?",
      [commentId, userId]
    );
    if (comment.length === 0) {
      return res.status(404).json({
        message:
          "Comment not found or user not authorized to update this comment.",
      });
    }

    const result = await db.query(
      "UPDATE comments SET content = ?, created_at = CURRENT_TIMESTAMP WHERE comment_id = ?",
      [content, commentId]
    );

    if (result[0].affectedRows) {
      res.status(200).json({ message: "Comment updated successfully." });
    } else {
      res.status(400).json({ message: "Error updating comment." });
    }
  } catch (err) {
    next(err);
  }
});

// Delete a comment
router.delete("/comments/:commentId", async (req, res, next) => {
  try {
    const { commentId } = req.params;
    const result = await db.query("DELETE FROM comments WHERE comment_id = ?", [
      commentId,
    ]);
    if (result[0].affectedRows) {
      res.status(200).json({ message: "Comment deleted successfully." });
    } else {
      res.status(404).json({ message: "Comment not found." });
    }
  } catch (err) {
    next(err);
  }
});

module.exports = router;
