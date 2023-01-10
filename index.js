const express = require("express");
const app=express();
const connection=require('./database');
const path=require('path');
const { query } = require("./database");

require('./router/home.router')(app);

app.use(express.static('public'));

const foodItem=[];

app.get('/store',function(req,res){
    let sql="SELECT * FROM STORE";
    connection.query(sql,function(err,results){
        if(err) throw err;
        res.send(JSON.stringify(results));
        // res.send(results);
        foodItem=results;
    }); 
})

app.get('/api/ComGa', function(req, res) {
    
    let sql="SELECT * FROM STORE WHERE FOODNAME='Cơm gà'";
    connection.query(sql,function(err,results){
        if(err) throw err;
        res.send(JSON.stringify(results));
    }); 
});


app.listen(3000,function(){
    console.log("App listening on port 3000");
})


module.exports = foodItem;