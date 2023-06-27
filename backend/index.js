const express = require("express");
const PORT = process.env.PORT || 5000;
const cors = require("cors");

const app = express()

app.use(express.json())
app.use(express.urlencoded({extended: true}))
app.use(cors())


// routes

const prductRoute = require('./routes/productRoute.js')
const usersRoute = require('./routes/usersRoute.js')
const categoryRoute = require('./routes/categoryRoute.js')
const inventoryReportRoute = require('./routes/inventoryReportRoute.js')
const sellingReportRoute = require('./routes/sellingReportRoute.js')
const unitRoute = require('./routes/uniteRoute.js')

app.use('/product', prductRoute)
app.use('/users', usersRoute)
app.use('/category', categoryRoute)
app.use('/inventory_report', inventoryReportRoute)
app.use('/selling_report', sellingReportRoute)
app.use('/unit', unitRoute)



app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}.`);
  });
