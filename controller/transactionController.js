const pool = require("../config/db");
const obatJadiModel = require("../model/obatJadiModel");

exports.selectAllTransaction = async (req, res) => {
    const showTransaction = `SELECT
          transaksi.id,
          users.nama AS nama_user,
          obat_jadi.nama,
          transaksi_obat_jadi.quantity,
          transaksi.tanggal,
          transaksi.total,
          transaksi.status
            FROM transaksi 
              JOIN users
                ON transaksi.user_id = users.id 
              JOIN transaksi_obat_jadi
                ON transaksi.id = transaksi_obat_jadi.transaksi_id
              JOIN obat_jadi
                ON obat_jadi.id = transaksi_obat_jadi.obat_jadi_id`
  
    pool.query(showTransaction, (err, result) => {
      if (err) {
        res.status(400).send({ message: err });
      }
  
      res.status(200).send({ result: result });
    });
  };