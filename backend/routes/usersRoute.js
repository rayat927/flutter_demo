const router = require('express').Router()
const con = require('../db.js')

router.get('/', (req, res) => {
    con.query('select * from users')
    .then(result => {
        res.json(result[0])
    })
})

router.post('/add', (req, res) => {
    const {username, phone_number, role} = req.body

    con.query(`insert into users (username, phone_number, role) values ('${username}', '${phone_number}', '${role}')`)
    .then(result => {
        res.json(result)
    }).catch(err => {
        console.log(err);
    })
})

router.get('/:phoneNumber', (req, res) => {
    console.log(`${req.params.phoneNumber}`);
    con.query(`select * from users where phone_number='${req.params.phoneNumber}'`)
    .then(result => {
        if(result[0].length > 0){
            res.json({result: result[0], no_results: false})
        }else{
            res.json({no_results: true})
        }
    })
})

module.exports = router