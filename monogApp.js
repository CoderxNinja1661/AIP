const express = require("express");
const mongoose = require("mongoose");

const app = express();
app.use(express.json());

// Connect MongoDB
mongoose.connect("mongodb://127.0.0.1:27017/crudDB")
.then(() => console.log("MongoDB Connected"))
.catch(err => console.log(err));

// Schema
const UserSchema = new mongoose.Schema({
    name: String,
    age: Number,
    email: String
});

const User = mongoose.model("User", UserSchema);

// CREATE
app.post("/users", async (req, res) => {
    const user = new User(req.body);
    const result = await user.save();
    res.send(result);
});

// READ
app.get("/users", async (req, res) => {
    const users = await User.find();
    res.send(users);
});

// UPDATE
app.put("/users/:id", async (req, res) => {
    const user = await User.findByIdAndUpdate(req.params.id, req.body, { new: true });
    res.send(user);
});

// DELETE
app.delete("/users/:id", async (req, res) => {
    await User.findByIdAndDelete(req.params.id);
    res.send("Deleted");
});

app.listen(3000, () => console.log("Server running on port 3000"));