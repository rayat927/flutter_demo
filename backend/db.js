const mysql = require('mysql2')


const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '123rubaiRAYAT',
    database: 'product_app'
})

pool.getConnection(err => {
    if(err){
        console.log(
            "DB connection failed \n Error : " + JSON.stringify(err, undefined, 2)
          );
    }else{
      console.log('DB connection succeeded');  
    }
    
})

con = pool.promise()

module.exports = con

