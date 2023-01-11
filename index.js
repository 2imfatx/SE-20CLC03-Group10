const express = require("express");
const app=express();
const connection=require('./database');
const path=require('path');
const { query } = require("./database");

require('./router/home.router')(app);

app.use(express.static('public'));

const foodItem=[];



app.get('/api/ComGa', function(req, res) {
    
    let sql="SELECT * FROM STORE WHERE FOODNAME='Cơm gà'";
    connection.query(sql,function(err,results){
        if(err) throw err;
        res.send(JSON.stringify(results));
    }); 
});

app.get('/api/ComSuon', function(req, res) {
    let sql1="SELECT * FROM STORE WHERE FOODNAME='Cơm sườn'";
    connection.query(sql1,function(err,results){
        if(err) throw err;
        res.send(JSON.stringify(results));
    }); 
});

app.get('/api/BanhMi', function(req, res) {
    let sql1="SELECT * FROM STORE WHERE FOODNAME='Bánh mì'";
    connection.query(sql1,function(err,results){
        if(err) throw err;
        res.send(JSON.stringify(results));
    }); 
});

app.get('/api/BanhXeo', function(req, res) {
    let sql1="SELECT * FROM STORE WHERE FOODNAME='Bánh xèo'";
    connection.query(sql1,function(err,results){
        if(err) throw err;
        res.send(JSON.stringify(results));
    }); 
});


app.get('/api/BunBoHue', function(req, res) {
    let sql1="SELECT * FROM STORE WHERE FOODNAME='Bún bò Huế'";
    connection.query(sql1,function(err,results){
        if(err) throw err;
        res.send(JSON.stringify(results));
    }); 
});

app.get('/api/BunDau', function(req, res) {
    let sql1="SELECT * FROM STORE WHERE FOODNAME='Bún đậu mắm tôm'";
    connection.query(sql1,function(err,results){
        if(err) throw err;
        res.send(JSON.stringify(results));
    }); 
});

app.get('/api/BunThitNuong', function(req, res) {
    let sql1="SELECT * FROM STORE WHERE FOODNAME='Bún thịt nướng'";
    connection.query(sql1,function(err,results){
        if(err) throw err;
        res.send(JSON.stringify(results));
    }); 
});

app.get('/api/HuTieu', function(req, res) {
    let sql1="SELECT * FROM STORE WHERE FOODNAME='Hủ tiếu'";
    connection.query(sql1,function(err,results){
        if(err) throw err;
        res.send(JSON.stringify(results));
    }); 
});

app.get('/api/SignIn', function(req, res) {
    let sql1="SELECT * FROM ACCOUNT";
    connection.query(sql1,function(err,results){
        if(err) throw err;
        res.send(JSON.stringify(results));
    }); 
});

app.listen(3000,function(){
    console.log("App listening on port 3000");
})


module.exports = foodItem;