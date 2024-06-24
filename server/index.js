const express = require('express');
const bodyParser = require('body-parser');
require("dotenv").config();


const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

const loginRouter = require('./routes/auth_route');
const studentMasterRouter = require('./routes/academic_student_master_routes');


app.use('/api',loginRouter);
app.use('/api',studentMasterRouter);

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});

