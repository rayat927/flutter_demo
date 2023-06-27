const router = require('express').Router()
const con = require('../db.js')


router.get('/', (req, res) => {
    con.query('select * from unit')
    .then(result => {
        res.json(result[0])
    })
})

router.post('/add', (req, res) => {
    const {name} = req.body

    con.query(`insert into unit (name) values ('${name}')`)
    .then(result => {
        res.json(result)
    }).catch(err => {
        console.log(err);
    })
})

module.exports = router