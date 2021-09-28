const express = require("express");
const router = express.Router();

const obatJadiController = require("../controller/obatJadiController");
const bahanBakuController = require("../controller/bahanBakuController");
const transactionController = require("../controller/transactionController");
const obatCustomController = require("../controller/obatCustomController");

router.get("/obatjadi", obatJadiController.selectAll);
router.get("/obatCustom", obatCustomController.selectAll);
router.get("/obatCustom/Update", obatCustomController.setMeasurement);
router.get("/obatjadi/:id", obatJadiController.selectByParams);
router.post("/obatjadi/insert", obatJadiController.insert);
router.post("/obatjadi/update/:id", obatJadiController.update);
router.post("/obatjadi/delete/:id", obatJadiController.delete);

router.get("/getTransaction", transactionController.selectAllTransaction);
router.get("/sales-report", transactionController.salesReport);
router.get("/revenue", transactionController.revenueTransaction);

router.get("/bahanbaku", bahanBakuController.selectAll);
router.get("/bahanbaku/:id", bahanBakuController.selectByParams);
router.post("/bahanbaku/insert", bahanBakuController.insert);
router.post("/bahanbaku/update/:id", bahanBakuController.update);
router.post("/bahanbaku/delete/:id", bahanBakuController.delete);

module.exports = router;
