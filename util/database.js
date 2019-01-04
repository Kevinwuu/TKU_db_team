const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'kevin',
    database: 'blogen',
    password: 'kevinxd'
});

module.exports = pool.promise();