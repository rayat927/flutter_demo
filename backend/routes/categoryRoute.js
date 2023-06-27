const router = require('express').Router()
const con = require('../db.js')


router.get('/', (req, res) => {
    con.query('select * from category')
    .then(result => {
        res.json(result[0])
    })
})

router.post('/add', (req, res) => {
    const {name, category_code} = req.body

    con.query(`insert into category (name, category_code) values ('${name}', '${category_code}')`)
    .then(result => {
        res.json(result)
    }).catch(err => {
        console.log(err);
    })
})

module.exports = router