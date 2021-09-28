const obatJadiModel = require('../model/obatJadiModel')

exports.selectAll = async(req,res) =>{
    obatJadiModel.selectAll()
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
    obatJadiModel.selectByParams(req.params)
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
        stock: req.body.stock,
        harga: req.body.harga,
        kategori: req.body.kategori,
        foto_produk: req.body.foto_produk
    }
    obatJadiModel.insert(data)
    .then((result)=>{
        res.json({
            nama: req.body.nama,
            deskripsi: req.body.deskripsi,
            stock: req.body.stock,
            harga: req.body.harga,
            kategori: req.body.kategori,
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
        stock: req.body.stock,
        harga: req.body.harga,
        kategori: req.body.kategori,
        foto_produk: req.body.foto_produk
    }
    obatJadiModel.update(updatedData)
    .then((result)=>{
        res.json({
            nama: req.body.nama,
            deskripsi: req.body.deskripsi,
            stock: req.body.stock,
            kategori: req.body.kategori,
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
    obatJadiModel.delete(data)
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