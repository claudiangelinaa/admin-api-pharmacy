const express = require("express");
const router = express.Router();

const authController = require("../controller/authController");
const obatJadiController = require("../controller/obatJadiController");
const bahanBakuController = require("../controller/bahanBakuController");
const transactionController = require("../controller/transactionController");
const obatCustomController = require("../controller/obatCustomController");

router.post("/users/login", authController.login);
router.get("/users/check-token", authController.checkToken)

router.get("/obatjadi", obatJadiController.selectAll);
router.get("/obatjadi/category", obatJadiController.getCategory);
router.get("/obatjadi/:id", obatJadiController.selectByParams);
router.post("/obatjadi/insert", obatJadiController.insert);
router.post("/obatjadi/update/:id", obatJadiController.update);
router.post("/obatjadi/delete/:id", obatJadiController.delete);

router.get("/getTransaction", transactionController.selectAllTransaction);
router.get('/getRacikTransaction', transactionController.selectAllRacikTransaction)
router.get("/sales-report", transactionController.salesReport);
router.get("/revenue", transactionController.revenueTransaction);

router.post("/insertObatRacikDetailTransaction/:id", transactionController.insertObatRacikDetailTransaction);
router.post("/updateTransactionStatus/:id", transactionController.updateTransactionStatus);

router.get("/obatCustom", obatCustomController.selectAll);
router.post("/obatCustom/Update", obatCustomController.setMeasurement);

router.get("/bahanbaku", bahanBakuController.selectAll);
router.post("/bahanbaku/insert", bahanBakuController.insert);
router.post("/bahanbaku/update/:id", bahanBakuController.update);
router.post("/bahanbaku/delete/:id", bahanBakuController.delete);
router.post("/bahanbaku/:id/update/stock", bahanBakuController.updateStock)
router.get("/bahanbaku/:id", bahanBakuController.selectByParams);

router.use("/images", express.static("images"));

module.exports = router;
