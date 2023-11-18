const express = require("express");
const router = express.Router();
const db = require("../database");

// Follow a user
router.post("/:userId/follow", async (req, res, next) => {
  try {
    const { userId } = req.params; // the user to be followed
    const { followerId } = req.body;

    // Prevent users from following themselves
    if (userId === followerId) {
      return res
        .status(400)
        .json({ message: "Users can't follow themselves." });
    }

    // Check if already following
    const [follow] = await db.query(
      "SELECT * FROM followers WHERE user_id = ? AND follower_id = ?",
      [userId, followerId]
    );

    if (follow.length) {
      return res.status(409).json({ message: "Already following this user." });
    }

    await db.query(
      "INSERT INTO followers (user_id, follower_id) VALUES (?, ?)",
      [userId, followerId]
    );

    res
      .status(201)
      .json({ message: "Successfully started following the user." });
  } catch (err) {
    next(err);
  }
});

// Unfollow a user
router.delete("/:userId/follow", async (req, res, next) => {
  try {
    const { userId } = req.params; // the user to be unfollowed
    const { followerId } = req.body;

    const result = await db.query(
      "DELETE FROM followers WHERE user_id = ? AND follower_id = ?",
      [userId, followerId]
    );

    if (result[0].affectedRows) {
      res.status(200).json({ message: "Successfully unfollowed the user." });
    } else {
      res.status(404).json({ message: "You are not following this user." });
    }
  } catch (err) {
    next(err);
  }
});

module.exports = router;
