
module.exports = function (router) {
    var homeController = require('../controllers/home.controller');
    

    router.get('/', homeController.home);

    router.get('/about', homeController.about);

    router.get('/cart', homeController.cart);

    router.get('/store',homeController.store);

    router.get('/ComGa',homeController.comGa);

    router.get('/ComSuon',homeController.comSuon);

    router.get('/BanhMi',homeController.banhMi);

    router.get('/BanhXeo',homeController.banhXeo);

    router.get('/BunBoHue',homeController.bunBoHue);
    
    router.get('/BunDau',homeController.bunDau);
    
    router.get('/BunThitNuong',homeController.bunThitNuong);

    router.get('/HuTieu',homeController.huTieu);

    router.get('/SignIn',homeController.signIn);

    router.get('/SignUp',homeController.signUp);
}