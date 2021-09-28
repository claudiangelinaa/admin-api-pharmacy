const pool = require('../config/db')
const bahanBakuModel = require('../model/bahanBakuModel')

exports.selectAll = async(req,res) =>{
    bahanBakuModel.selectAll()
    .then((result)=>{
        res.json({
            result
        })
    })
    .catch(err=>{
        res.json({
            status: 'error',
            message: 'failed to fetch data',
            error_message: err
        })
    })
}

exports.selectByParams = async(req,res) =>{
    bahanBakuModel.selectByParams(req.params)
    .then((result)=>{
        res.json({
            result
        })
    })
    .catch(err=>{
        res.json({
            status: 'error',
            message: 'failed to fetch data',
            error_message: err
        })
    })
}

exports.insert = async(req,res) =>{
    let data = {
        nama: req.body.nama,
        deskripsi: req.body.deskripsi,
        stok: req.body.stok,
        harga: req.body.harga,
        foto_produk: req.body.foto_produk
    }
    bahanBakuModel.insert(data)
    .then((result)=>{
        res.json({
            nama: req.body.nama,
            deskripsi: req.body.deskripsi,
            stok: req.body.stok,
            harga: req.body.harga,
            foto_produk: req.body.foto_produk
        })
    })
    .catch(err=>{
        res.json({
            status: 'error',
            message: 'failed to insert data',
            error_message: err
        })
    })
}

exports.update = async(req,res) =>{
    let updatedData = {
        id: req.params.id,
        nama: req.body.nama,
        deskripsi: req.body.deskripsi,
        stok: req.body.stok,
        harga: req.body.harga,
        foto_produk: req.body.foto_produk
    }
    bahanBakuModel.update(updatedData)
    .then((result)=>{
        res.json({
            nama: req.body.nama,
            deskripsi: req.body.deskripsi,
            stok: req.body.stok,
            harga: req.body.harga,
            foto_produk: req.body.foto_produk
        })
    })
    .catch(err=>{
        res.json({
            status: 'error',
            message: 'failed to update data',
            error_message: err
        })
    })
}


exports.delete = async(req,res) => {
    let data = {
        id: req.params.id     
    }
    bahanBakuModel.delete(data)
    .then(()=>{
        res.json({
            status: 'ok',
            message: 'Data successfully deleted',
        })

    })
    .catch((err) =>{
        res.json({
            status: 'failed',
            message: 'Failed to delete data',
            error_message: err
        })
    })
}

exports.updateStock = async(req,res) => {
    const updateStockQuery = `UPDATE bahan_baku SET stock = ${req.body.stock} WHERE id=${req.params.id}`

    pool.query(updateStockQuery, (err, result) => {
        if (err) {
            res.status(400).send({ message: err });
        } else if(result) {
            res.status(200).send({ result })
        }
    })
}