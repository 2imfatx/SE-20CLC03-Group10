


exports.home = function (req, res) {
    res.sendFile(__dirname.replace('controllers', '') + '/index.html');
}

exports.dataStore=function(req,res){
    res.sendFile(__dirname.replace('controllers', 'public') + '/script.js');
}

exports.about = function (req, res) {
    res.send("Hello about page");
}

exports.cart = function (req, res) {
    res.sendFile(__dirname.replace('controllers', 'public') + '/cart.html');
}

exports.store =function(req,res){
    res.sendFile(__dirname.replace('controllers', 'public') + '/store.html');
}

exports.comGa =function(req,res){
    res.sendFile(__dirname.replace('controllers', 'public') + '/store.html');
}


