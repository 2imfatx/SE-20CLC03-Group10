var cartData = localStorage.getItem('cart') ? JSON.parse(localStorage.getItem('cart')) : []


function displayItems() {
    var totalPrice = 0;
    var cart = document.getElementById('order')

    var CartData = cartData;
    CartData.map(item => {

        var itemCard = document.createElement('div');
        itemCard.setAttribute('id', 'productOrder');

        var itemImg = document.createElement('img');
        itemImg.src = item.ImageStore;

        const inforDiv = document.createElement('div');

        var itemName = document.createElement('p');
        itemName.textContent = item.StoreName;

        var itemPrice = document.createElement('p');
        itemPrice.textContent = "Giá cả: " + item.Price;

        var itemQuantity = document.createElement('div');
        itemQuantity.textContent = item.quantity;
        var incrementButton = document.createElement('button');
        incrementButton.innerHTML = " + ";
        incrementButton.addEventListener("click", () => {
            item.quantity++;
            itemQuantity.textContent = item.quantity;
            localStorage.setItem('cart', JSON.stringify(cartData));
            itemSubToTal.textContent = item.Price * item.quantity;
            SubToTalDiv.removeChild(itemSubToTal);
            SubToTalDiv.appendChild(itemSubToTal);
            // var totalPrice = 0;
            totalPrice = 0
            for (let i = 0; i < cartData.length; i++) {
                totalPrice = totalPrice + cartData.map((item) => item.Price)[i] * cartData.map((item) => item.quantity)[i];
            }

            var total = document.getElementById('subToTal')
            total.textContent = "TỔNG CỘNG GIÁ TRỊ SẢN PHẨM: " + totalPrice + ' VNĐ';
        });
        var decrementButton = document.createElement('button');
        decrementButton.innerHTML = " - ";
        decrementButton.addEventListener("click", () => {
            if (item.quantity > 0) {
                item.quantity -= 1;
                itemQuantity.textContent = item.quantity;
                if (item.quantity === 0) {
                    cart.removeChild(itemCard);
                    cartData = cartData.filter((item) => item.quantity !== 0);
                }
                localStorage.setItem('cart', JSON.stringify(cartData));
            }
            itemSubToTal.textContent = item.Price * item.quantity;
            SubToTalDiv.removeChild(itemSubToTal);
            SubToTalDiv.appendChild(itemSubToTal);
            // var totalPrice = 0;
            totalPrice = 0
            for (let i = 0; i < cartData.length; i++) {
                totalPrice = totalPrice + cartData.map((item) => item.Price)[i] * cartData.map((item) => item.quantity)[i];
            }

            var total = document.getElementById('subToTal')
            total.textContent = "TỔNG CỘNG GIÁ TRỊ SẢN PHẨM: " + totalPrice + ' VNĐ';
        });

        const SubToTalDiv = document.createElement('div');
        var itemSubToTal = document.createElement('p1');
        itemSubToTal.textContent = item.Price * item.quantity;

        var Button = document.createElement('button');
        Button.setAttribute('id', 'deleteItem');
        Button.textContent = 'Xóa sản phẩm';

        totalPrice = 0
        for (let i = 0; i < cartData.length; i++) {
            totalPrice = totalPrice + cartData.map((item) => item.Price)[i] * cartData.map((item) => item.quantity)[i];
        }

        var total = document.getElementById('subToTal')
        total.textContent = "TỔNG CỘNG GIÁ TRỊ SẢN PHẨM: " + totalPrice + ' VNĐ';



        itemCard.appendChild(itemImg);
        itemCard.appendChild(inforDiv);
        inforDiv.appendChild(itemName);
        inforDiv.appendChild(itemPrice);

        itemCard.appendChild(itemQuantity);
        itemCard.appendChild(incrementButton);
        itemCard.appendChild(decrementButton);

        itemCard.appendChild(SubToTalDiv);
        SubToTalDiv.appendChild(itemSubToTal);

        itemCard.appendChild(Button);

        cart.appendChild(itemCard);

        var submit = document.getElementById('submit');
        submit.addEventListener("click", () => {
            
            alert("Đặt hàng thành công - Kết thúc sản phẩm demo cảm ơn đã xem");
            resetLocalStorage()
        });
    })

}
displayItems();

function resetLocalStorage() {
    localStorage.clear();
    location.reload();
}