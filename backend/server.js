require("dotenv").config();
const express = require("express");
const app = express();
const port = process.env.PORT || 5000;
const db = require("./database");
const cors = require("cors");
const morgan = require("morgan");
const helmet = require("helmet");
const userRoutes = require("./routes/user");
const postRoutes = require("./routes/posts");
const commentRoutes = require("./routes/comments");
const likeRoutes = require("./routes/likes");
const followerRoutes = require("./routes/followers");

app.use(express.json());
app.use(cors());
app.use(morgan("dev"));
app.use(helmet());
app.use("/users", userRoutes);
app.use("/posts", postRoutes);
app.use("/comments", commentRoutes);
app.use("/likes", likeRoutes);
app.use("/followers", followerRoutes);

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({
    message: "Something went wrong on the server.",
    error: process.env.NODE_ENV === "development" ? err : {},
  });
});

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
