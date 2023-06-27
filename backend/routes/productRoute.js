const router = require('express').Router()
const con = require('../db.js')

router.get('/', (req, res) => {
    con.query('select * from product')
    .then(result => {
        res.json(result[0])
    })
})

router.get('/:id', (req, res) => {
    con.query(`select * from product where id=${req.params.id}`)
    .then(result => {
        res.json(result[0])
    })
})

router.post('/add', (req, res) => {
    const {name, product_code} = req.body

    con.query(`insert into product (name, product_code) values ('${name}', '${product_code}')`)
    .then(result => {
        res.json(result)
    }).catch(err => {
        console.log(err);
    })
})

module.exports = router