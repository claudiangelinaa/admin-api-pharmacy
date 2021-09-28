const pool = require("../config/db");

exports.selectAll = (data) => {
  return new Promise(function (resolve, reject) {
    var sql = `SELECT * FROM OBAT_RACIK`;
    pool.query(sql, [data], (err, result) => {
      if (err) reject(err);
      resolve(result);
    });
  });
};
