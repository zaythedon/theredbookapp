const express = require("express");
const router = express.Router();
const db = require("../database");

// Get all users
// TODO: Probably delete this, we don't want to return all users in the database to the frontend at once (security risk)
router.get("/", async (req, res, next) => {
  try {
    const [users] = await db.query("SELECT * FROM users");
    res.json(users);
  } catch (err) {
    next(err);
  }
});

// GET request to retrieve a user by UUID
router.get("/:uuid", async (req, res, next) => {
  try {
    const { uuid } = req.params;

    // TODO: add validation for the UUID here

    const [rows, fields] = await db.query(
      "SELECT * FROM users WHERE user_id = ?",
      [uuid]
    );

    if (rows.length) {
      res.json(rows[0]);
    } else {
      res.status(404).json({ message: "User not found." });
    }
  } catch (err) {
    next(err);
  }
});

// POST request to create a new user
router.post("/", async (req, res, next) => {
  try {
    const { firstName, lastName, email, password, handle, birthday, employer } =
      req.body;
    console.log(req.body);

    // TODO: add validation and password hashing here

    const result = await db.query(
      "INSERT INTO users (first_name, last_name, email, password, handle, birthday, employer) VALUES (?, ?, ?, ?, ?, ?, ?)",
      [firstName, lastName, email, password, handle, birthday, employer]
    );

    if (result[0].affectedRows) {
      res.status(201).json({
        message: "User created successfully.",
        userId: result[0].insertId,
      });
    } else {
      res.status(400).json({ message: "User could not be created." });
    }
  } catch (err) {
    if (err.message.includes("email")) {
      res
        .status(409)
        .json({ message: "A user with the given email already exists." });
    } else if (err.message.includes("handle")) {
      res
        .status(409)
        .json({ message: "A user with the given handle already exists." });
    } else {
      next(err);
    }
  }
});

// PATCH request to update a user
router.patch("/:uuid", async (req, res, next) => {
  try {
    const { uuid } = req.params;
    const { firstName, lastName, email, password, handle, employer } = req.body;

    // TODO: Validate input here

    let updateFields = [];
    let queryParams = [];

    if (firstName) {
      updateFields.push("first_name = ?");
      queryParams.push(firstName);
    }
    if (lastName) {
      updateFields.push("last_name = ?");
      queryParams.push(lastName);
    }
    if (email) {
      updateFields.push("email = ?");
      queryParams.push(email);
    }
    if (password) {
      // TODO: Hash the password before updating
      updateFields.push("password = ?");
      queryParams.push(password);
    }
    if (handle) {
      updateFields.push("handle = ?");
      queryParams.push(handle);
    }
    if (employer) {
      updateFields.push("employer = ?");
      queryParams.push(employer);
    }

    // If no fields were provided for update, return an error
    if (updateFields.length === 0) {
      return res
        .status(400)
        .json({ message: "No valid fields provided for update." });
    }

    let query = `UPDATE users SET ${updateFields.join(", ")} WHERE user_id = ?`;
    queryParams.push(uuid);

    const result = await db.query(query, queryParams);

    if (result[0].affectedRows) {
      res.status(200).json({ message: "User updated successfully." });
    } else {
      res
        .status(404)
        .json({ message: "User not found or no changes provided." });
    }
  } catch (err) {
    next(err);
  }
});

// DELETE request to delete a user by UUID
router.delete("/:uuid", async (req, res, next) => {
  try {
    const { uuid } = req.params;

    // TODO: Validate the UUID here

    const result = await db.query("DELETE FROM users WHERE user_id = ?", [
      uuid,
    ]);
    if (result[0].affectedRows) {
      res.status(200).json({ message: "User deleted successfully." });
    } else {
      res.status(404).json({ message: "User not found." });
    }
  } catch (err) {
    next(err);
  }
});

module.exports = router;
