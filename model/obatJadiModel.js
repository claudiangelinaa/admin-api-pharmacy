const pool = require('../config/db');

exports.selectAll = (data) =>{
    return new Promise(function(resolve,reject){
        var sql = `SELECT * FROM OBAT_JADI`
        pool.query(sql, [data], (err,result)=>{
            console.log(err,result);
            if(err) reject(err)
            resolve(result)
        })
    })
}

exports.selectByParams = (data) =>{
    return new Promise(function(resolve,reject){
        var sql = `SELECT * FROM OBAT_JADI WHERE ID=${data.id}`
        pool.query(sql, [data], (err,result)=>{
            console.log(err,result);
            if(err) reject(err)
            resolve(result)
        })
    })
}

exports.insert = (data) =>{
    return new Promise(function(resolve,reject){
        var sql = `INSERT INTO OBAT_JADI SET?`
        pool.query(sql, [data], (err,result)=>{
            console.log(err,result);
            if(err) reject(err)
            resolve(result)
        })
    })
}

exports.update = (data) =>{
    return new Promise(function(resolve,reject){
        var sql = `UPDATE OBAT_JADI SET? WHERE ID= ${data.id}`
        pool.query(sql, [data], (err,result)=>{
            console.log(err,result);
            if(err) reject(err)
            resolve(result)
        })
    })
}

exports.delete = (data) =>{
    return new Promise(function(resolve,reject){
        var sql = `DELETE FROM OBAT_JADI WHERE ID= ${data.id}`
        pool.query(sql, [data], (err,result)=>{
            console.log(err,result);
            if(err) reject(err)
            resolve(true)
        })
    })
}