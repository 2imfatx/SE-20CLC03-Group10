// var mysql =require("mysql");

// var connection = mysql.createConnection({
//     host:'localhost',
//     database:'shopaa',
//     user:'root',
//     password:'leanhvinh0901.'
// });

// module.exports=connection;

const mysql = require('mysql2');

// Create the connection
const connection = mysql.createConnection({
    host:'localhost',
    database:'shopaa',
    user:'root',
    password:'leanhvinh0901.'
});

// Connect to the database
connection.connect(function(err) {
  if (err) throw err;
  console.log('Connected to the database');
});

module.exports=connection;