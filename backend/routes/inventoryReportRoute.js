const router = require('express').Router()
const con = require('../db.js')

router.get('/', (req, res) => {
    con.query('select * from inventory_report')
    .then(result => {
        res.json(result[0])
    })
})

router.get('/:id', (req, res) => {
    con.query(`select * from inventory_report where id=${req.params.id}`)
    .then(result => {
        res.json(result[0])
    })
})

router.post('/add', (req, res) => {
    const {unit_cost_price, quantity, date, category, product, unit} = req.body

    con.query(`insert into inventory_report (unit_cost_price, quantity, date, category, product, unit) values (${unit_cost_price},${quantity}, '${date}', '${category}', '${product}', '${unit}')`)
    .then(result => {
        res.json(result)
    }).catch(err => {
        console.log(err);
    })
})

module.exports = router