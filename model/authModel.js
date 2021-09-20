const pool = require('../config/db');

exports.login = (data) =>{
    return new Promise(function(resolve, reject){
        var sql = `select * from users where email='${data.email}' and password='${data.password}'`
        pool.query(sql, (err,result)=>{
            // console.log(err, result, sql)
            if(err) reject(err)
            resolve(result)
        })
    })
}