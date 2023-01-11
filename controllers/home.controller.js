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

exports.comSuon =function(req,res){
    res.sendFile(__dirname.replace('controllers', 'public') + '/storeComSuon.html');
}

exports.banhMi =function(req,res){
    res.sendFile(__dirname.replace('controllers', 'public') + '/storeBanhMi.html');
}

exports.banhXeo =function(req,res){
    res.sendFile(__dirname.replace('controllers', 'public') + '/storeBanhXeo.html');
}

exports.bunBoHue =function(req,res){
    res.sendFile(__dirname.replace('controllers', 'public') + '/storeBunBoHue.html');
}

exports.bunDau =function(req,res){
    res.sendFile(__dirname.replace('controllers', 'public') + '/storeBunDau.html');
}

exports.bunThitNuong =function(req,res){
    res.sendFile(__dirname.replace('controllers', 'public') + '/storeBunThitNuong.html');
}

exports.huTieu =function(req,res){
    res.sendFile(__dirname.replace('controllers', 'public') + '/storeHuTieu.html');
}

exports.signIn =function(req,res){
    res.sendFile(__dirname.replace('controllers', 'public') + '/signIn.html');
}

exports.signUp =function(req,res){
    res.sendFile(__dirname.replace('controllers', 'public') + '/signUp.html');
}
