const authModel = require("../model/authModel");
const bcrypt = require("../lib/bcrypt");
const jwt = require("../lib/jwt");

exports.login = async (req, res) => {
  let data = {
    email: req.body.email,
    password: bcrypt.Encrypt(req.body.password),
  };
  authModel
    .login(data)
    .then((result) => {
      let tokenData = {
        id: result[0].id,
        role: result[0].role,
        nama: result[0].nama,
      };
      let token = jwt.Encode(tokenData);
      res.json({
        id: result[0].id,
        nama: result[0].nama,
        email: result[0].email,
        role: result[0].role,
        token,
      });
    })
    .catch((err) => {
      // console.log('err', err)
      res.json({
        status: "error",
        message: "failed to login",
        error_message: err,
      });
    });
};

exports.checkToken = async (req, res) => {
  // console.log(req.headers)
  let loginData = jwt.Decode(req.headers.authorization);
  // console.log(loginData)
  res.json(loginData);
};