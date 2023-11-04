require("dotenv").config();
const express = require("express");
const app = express();
const port = process.env.PORT || 5000;
const db = require("./database");
const cors = require("cors");
const morgan = require("morgan");
const helmet = require("helmet");
const userRoutes = require("./routes/user");

app.use(express.json());
app.use(cors());
app.use(morgan("dev"));
app.use(helmet());
app.use("/users", userRoutes);

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
