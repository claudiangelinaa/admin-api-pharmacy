const pool = require("../config/db");
const obatCustomModel = require("../model/obatCustomModel");

exports.selectAll = async (req, res) => {
  obatCustomModel
    .selectAll()
    .then((result) => {
      res.json({
        result,
      });
    })
    .catch((err) => {
      res.json({
        status: "error",
        message: "failed to fetch data",
        error_message: err,
      });
    });
};

exports.setMeasurement = async (req, res) => {
  const { quantity, obat_racik_id } = req.body;

  // const insertTransaksi = `INSERT INTO transaksi (total, alamat, user_id) VALUES (${total},'${alamat}',${user_id})`;

  // pool.query(insertTransaksi, (err, result) => {
  //   try {
  //     if (err) {
  //       throw err;
  //     }

  //     if (err) {
  //       res.status(400).send({ message: "Transaction cannot be processed" });
  //       return;
  //     }
  // const id = result.insertId;
  const id = 115;

  // for (let i = 0; i < obat_racik_id.length; i++) {
  //   const insertObat = `INSERT INTO transaksi_obat_racik (obat_racik_id, transaksi_ids, quantity) VALUES (${obat_racik_id[i]},${id},${quantity[i]})`;
  const showQuantity = `SELECT stock, stock_satuan from bahan_baku where id=${obat_racik_id}`;

  pool.query(showQuantity, (err, result) => {
    const stock = result[0].stock;
    const stock_satuan = result[0].stock_satuan;
    const stockStr = stock < 10 ? stock + String(stock_satuan) : stock * 1000;
    const finalQty =
      stock === 0 ? stock_satuan - quantity : Number(stockStr) - quantity;
    const digits = finalQty <= 0 ? 0 : String(finalQty).split("").map(Number);
    const total = digits <= 0 ? 0 : Number(digits.join(""));

    console.log({
      stock: stock,
      stock_satuan: stock_satuan,
      finalQuantity: finalQty < 0 ? 0 : finalQty,
      total: total,
      quantity: quantity,
      stock: Number(stockStr),
      // splice: spliceFirstNumber,
      // digits: Number(spliceAnotherNumber),
    });

    if (err) {
      res.status(400).send(err);
      return;
    }

    if (quantity >= Number(stockStr)) {
      res
        .status(400)
        .send({ errors: "You can't input quantity more than stock" });
      return;
    }

    if (total < 0) {
      res
        .status(400)
        .send({ errors: "You can't input quantity more than stock" });
      return;
    }

    const spliceFirstNumber = digits.length > 3 ? digits[0] : 0;
    const spliceAnotherNumber = String([...digits].splice(1).join(""));

    console.log({
      stock: stock,
      stock_satuan: stock_satuan,
      quantity: finalQty < 0 ? 0 : finalQty,
      total: total,
      splice: spliceFirstNumber,
      digits: Number(spliceAnotherNumber),
      totals: Number(stockStr),
    });

    if (digits.length < 4) {
      const updateStock = `UPDATE bahan_baku SET stock=0 where id=${obat_racik_id}`;
      const updateStocksatuan = `UPDATE bahan_baku SET stock_satuan=${total} where id=${obat_racik_id}`;

      pool.query(updateStock, (err, result) => {
        if (err) {
          res.status(400).send(err);
          return;
        }
      });

      pool.query(updateStocksatuan, (err, result) => {
        if (err) {
          res.status(400).send(err);
          return;
        }
      });

      res.status(200).send({ message: "berhasil" });
      return;
    }

    if (finalQty < 1000) {
      const updateStock = `UPDATE bahan_baku SET stock=0 where id=${obat_racik_id}`;
      const updateStocksatuan = `UPDATE bahan_baku SET stock_satuan=${total} where id=${obat_racik_id}`;

      pool.query(updateStock, (err, result) => {
        if (err) {
          res.status(400).send(err);
          return;
        }
      });

      pool.query(updateStocksatuan, (err, result) => {
        if (err) {
          res.status(400).send(err);
          return;
        }

        res.status(200).send({ message: "berhasil kontol" });
        return;
      });
    }

    const updateStock = `UPDATE bahan_baku SET stock=${spliceFirstNumber} where id=${obat_racik_id}`;
    const updateStocksatuan = `UPDATE bahan_baku SET stock_satuan=${Number(
      spliceAnotherNumber
    )} where id=${obat_racik_id}`;

    pool.query(updateStock, (err, result) => {
      if (err) {
        res.status(400).send(err);
        return;
      }

      pool.query(updateStocksatuan, (err, result) => {
        if (err) {
          res.status(400).send(err);
          return;
        }

        res.status(200).send({ message: "berhasil" });
        return;
      });
    });
  });
};
