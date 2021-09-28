const obatJadiModel = require('../model/obatJadiModel')
const multer = require('../lib/multer')
const image = require('../helper/image')
const platform = require('../platform')

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
    console.log(req.body)
    // console.log("req body:", JSON.parse(req.body.data))

    let fileName = image.generateImageFileName('PRODUCT_IMG')
    let filePath = `/product`
    
    let next = multer.uploadImage(filePath, fileName)
    next(req,res, (err) => {
        if (err) {
            console.log(err)
            res.status(500).json({
                status: 'error',
                message: 'failed to upload',
                error_message: err
            })
        }

        let parsedData = JSON.parse(req.body.data)
        let data = {
            nama: parsedData.nama,
            deskripsi: parsedData.deskripsi,
            stock: parsedData.stock,
            harga: parsedData.harga,
            kategori: parsedData.kategori,
            foto_produk: `http://${platform.baseURL}:${platform.port}/images${filePath}/${fileName}`
        }
        console.log(data)
        obatJadiModel.insert(data)
        .then((result)=>{
            res.json({
                data
            })
        })
        .catch(err=>{
            res.json({
                status: 'error',
                message: 'failed to insert data',
                error_message: err
            })
        })
        
    })
    
}

exports.update = async(req,res) =>{
    let fileName = image.generateImageFileName('PRODUCT_IMG')
    let filePath = `/product`
    
    let next = multer.uploadImage(filePath, fileName)
    next(req,res, (err) => {
        if (err) {
            console.log(err)
            res.status(500).json({
                status: 'error',
                message: 'failed to upload',
                error_message: err
            })
            return
        }

        let parsedData = JSON.parse(req.body.data)
        let data = {
            id: req.params.id,
            nama: parsedData.nama,
            deskripsi: parsedData.deskripsi,
            stock: parsedData.stock,
            harga: parsedData.harga,
            kategori: parsedData.kategori,
            foto_produk: `http://${platform.baseURL}:${platform.port}/images${filePath}/${fileName}`
        }
        console.log(data)
        obatJadiModel.update(data)
        .then((result)=>{
            res.json({
                data
            })
        })
        .catch(err=>{
            res.json({
                status: 'error',
                message: 'failed to insert data',
                error_message: err
            })
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