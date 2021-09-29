const pool = require("../config/db");
const obatJadiModel = require("../model/obatJadiModel");

exports.revenueTransaction = async (req, res) => {
  const { date } = req.query;

  const revenueTransaction = `
        SELECT
          COUNT(id) AS total_transaction,
          SUM(total) AS total_revenue
          FROM transaksi
              WHERE ${date ? `MONTH(tanggal)=${date} AND status=4` : "status=4"}
                ORDER BY status=4;`
  
  pool.query(revenueTransaction, (err, result) => {
    if (err) {
      res.status(400).send({ message: err });
    } else {
      res.status(200).send({ result: result });
    }
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
    } else {
      res.status(200).send({ result: result });
    }
  });
};

exports.salesReport = async (req, res) => {
  const { date } = req.query;

  const transactionEachMonth = ` SELECT 
	  MONTH(tanggal) MONTH,
	  COUNT(*) as total
			  FROM transaksi
				  WHERE status=4
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
      return;
    }

    const data = result;

    pool.query(showTransaction, (err, result) => {
      if (err) {
        res.status(400).send({ message: err });
      } else {
        res.status(200).send({ countTransaction: data, result: result });
      }
    });
  });
};

exports.selectAllRacikTransaction = async (req, res) => {
  const selectAllRacikTransactionQuery = `SELECT
  transaksi.id,
  users.nama,
  transaksi.tanggal,
  transaksi.status,
  transaksi.resep_image
      FROM transaksi 
      JOIN users
        ON transaksi.user_id = users.id 
      JOIN transaksi_obat_racik
        ON transaksi_obat_racik.transaksi_id = transaksi.id
              WHERE transaksi.resep_image IS NOT NULL`;

  pool.query(selectAllRacikTransactionQuery, (err, result) => {
    if (err) {
      res.status(400).send({ message: err });
    } else {
      res.status(200).send({ result: result });
    }
  });
};

exports.insertObatRacikDetailTransaction = async (req, res) => {
// <<<<<<< feature/raw-usage-order
//   const updateOrderAcceptedStatusQuery = `UPDATE transaksi SET status = 3 WHERE id = ${req.params.id}`;
// =======
  // console.log(req.body, req.params)
  let totalHarga = 0
  
  for (let i =0; i < req.body.payload.length; i++) {
    const insertObatRacikDetailTransactionQuery = `INSERT INTO transaksi_obat_racik (bahan_baku_id, transaksi_id, komposisi_qty) VALUES (${req.body.payload[i].id},${req.params.id},${req.body.payload[i].qty})`
    // console.log(insertObatRacikDetailTransactionQuery)

    totalHarga += req.body.payload[i].harga

    pool.query(insertObatRacikDetailTransactionQuery, (err, result) => {
      if(err) {
        res.status(400).send({ message: err });
        return;
      } else {
        console.log("sukses insert", i, result)
      }
    });
  }

  const updateOrderAcceptedStatusQuery = `UPDATE transaksi SET status = 3, total = ${totalHarga} WHERE id = ${req.params.id}`

  pool.query(updateOrderAcceptedStatusQuery, (err, result) => {
    if (err) {
      res.status(400).send({ message: err });
    } else {
//       for (let i = 0; i < req.body.payload.length; i++) {
//         const insertObatRacikDetailTransactionQuery = `INSERT INTO transaksi_obat_racik (bahan_baku_id, transaksi_id, komposisi_qty) VALUES (${req.body.payload[i].id},${req.params.id},${req.body.payload[i].qty})`;

//         pool.query(insertObatRacikDetailTransactionQuery, (err, result) => {
//           if (err) {
//             res.status(400).send({ message: err });
//           } else {
//             res.status(200).send({ result: result });
//           }
//         });
//       }
      res.status(200).send({ result: result });
    }
  });
};

exports.updateTransactionStatus = async (req, res) => {
  const updateTransactionStatusQuery = `UPDATE transaksi SET status = ${req.body.status} WHERE id = ${req.params.id}`;

  pool.query(updateTransactionStatusQuery, (err, result) => {
    if (err) {
      res.status(400).send({ message: err });
    } else {
      res.status(200).send({ result: result });
    }
  });
};
