const express = require('express');
const app = express();

const cors = require('cors');
app.use(cors());

const bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true}));

const routes = require('./routes/route');
const platform = require('./platform');

app.use('/', routes);

app.listen(platform.port, ()=>{
    console.log(`Listening to port ${platform.port}...`)
})