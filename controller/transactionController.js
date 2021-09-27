const pool = require("../config/db");
const obatJadiModel = require("../model/obatJadiModel");

exports.revenueTransaction = async (req, res) => {
  const { date } = req.query;

  const revenueTransaction = `
        SELECT
          COUNT(id) AS total_transaction,
          SUM(total) AS total_revenue
          FROM transaksi
              WHERE ${date ? `MONTH(tanggal)=${date} AND status=1` : "status=1"}
                ORDER BY status=1;`;

  pool.query(revenueTransaction, (err, result) => {
    if (err) {
      res.status(400).send({ message: err });
    }

    res.status(200).send({ result: result });
  });
};

exports.selectAllTransaction = async (req, res) => {
  const { date } = req.query;

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
                ON obat_jadi.id = transaksi_obat_jadi.obat_jadi_id
                ${date ? `WHERE month(tanggal)=${date}` : ""}`;

  pool.query(showTransaction, (err, result) => {
    if (err) {
      res.status(400).send({ message: err });
    }

    res.status(200).send({ result: result });
  });
};

exports.salesReport = async (req, res) => {
  const { date } = req.query;

  const transactionEachMonth = ` SELECT 
	  MONTH(tanggal) MONTH,
	  COUNT(*) as total
			  FROM transaksi
				  WHERE status=1
				  GROUP BY MONTH(tanggal)
          ORDER BY MONTH(tanggal)`;

  const showTransaction = `SELECT
          transaksi.id,
          users.nama AS nama_user,
          obat_jadi.nama,
          transaksi_obat_jadi.quantity,
          transaksi.tanggal,
          transaksi.alamat AS alamat_pengiriman,
          transaksi.total
              FROM transaksi 
              JOIN users
                    ON transaksi.user_id = users.id 
              JOIN transaksi_obat_jadi
                    ON transaksi.id = transaksi_obat_jadi.transaksi_id
              JOIN obat_jadi
                    ON obat_jadi.id = transaksi_obat_jadi.obat_jadi_id
              ${date ? `WHERE month(tanggal)=${date}` : ""}
              ORDER BY transaksi.id ASC`;

  pool.query(transactionEachMonth, (err, result) => {
    if (err) {
      res.status(400).send({ message: err });
    }

    const data = result;

    pool.query(showTransaction, (err, result) => {
      if (err) {
        res.status(400).send({ message: err });
      }

      res.status(200).send({ countTransaction: data, result: result });
    });
  });
};
