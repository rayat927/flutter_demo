const router = require('express').Router()
const con = require('../db.js')

router.get('/', (req, res) => {
    con.query('select * from selling_report')
    .then(result => {
        res.json(result[0])
    })
})

router.get('/:id', (req, res) => {
    con.query(`select * from selling_report where id=${req.params.id}`)
    .then(result => {
        res.json(result[0])
    })
})

router.post('/add', (req, res) => {
    const {unit_selling_price, quantity, date, category, product, unit} = req.body

    con.query(`insert into selling_report (unit_selling_price, quantity, date, category, product, unit) values (${unit_selling_price},${quantity}, '${date}', '${category}', '${product}', '${unit}')`)
    .then(result => {
        res.json(result)
    }).catch(err => {
        console.log(err);
    })
})

module.exports = router