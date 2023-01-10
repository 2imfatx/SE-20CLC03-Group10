
module.exports = function (router) {
    var homeController = require('../controllers/home.controller');


    router.get('/', homeController.home);

    router.get('/about', homeController.about);

    router.get('/cart', homeController.cart);

    router.get('/store',homeController.store);

    router.get('/ComGa',homeController.comGa);
}