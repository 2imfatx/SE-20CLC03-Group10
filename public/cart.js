var cartData = localStorage.getItem('cart') ? JSON.parse(localStorage.getItem('cart')) : []


function displayItems() {

    if(cartData.length===0)alert("Giỏ hàng rỗng");
    var cart = document.getElementById('cart')

    var CartData = cartData;
    CartData.map(item => {

        var itemCard = document.createElement('div');
        itemCard.setAttribute('id', 'sellingFood');

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
            item.quantity ++;
            itemQuantity.textContent = item.quantity;
            localStorage.setItem('cart', JSON.stringify(cartData));
            itemSubToTal.textContent = item.Price*item.quantity;
            SubToTalDiv.removeChild(itemSubToTal);
            SubToTalDiv.appendChild(itemSubToTal);
            var totalPrice=0;
        for (let i = 0; i < cartData.length; i++) {
            totalPrice=totalPrice + cartData.map((item) => item.Price)[i]*cartData.map((item) => item.quantity)[i];
          }
        
        var total = document.getElementById('total')
        total.textContent = totalPrice + ' VNĐ';
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
            itemSubToTal.textContent = item.Price*item.quantity;
            SubToTalDiv.removeChild(itemSubToTal);
            SubToTalDiv.appendChild(itemSubToTal);
            var totalPrice=0;
        for (let i = 0; i < cartData.length; i++) {
            totalPrice=totalPrice + cartData.map((item) => item.Price)[i]*cartData.map((item) => item.quantity)[i];
          }
        
        var total = document.getElementById('total')
        total.textContent = totalPrice + ' VNĐ';
        });
        
        const SubToTalDiv = document.createElement('div');
        var itemSubToTal = document.createElement('p1');
        itemSubToTal.textContent = item.Price*item.quantity;
        
        var Button = document.createElement('button');
        Button.setAttribute('id','deleteItem');
        Button.textContent = 'Xóa sản phẩm';
        Button.addEventListener("click", () => {
            const nameElement = Button.parentNode.querySelector('p:first-child');
            const itemName = nameElement.textContent;
            cartData = cartData.filter((item) => item.StoreName !== itemName);
            localStorage.setItem('cart', JSON.stringify(cartData));
            cart.removeChild(itemCard);
            var totalPrice = 0;
            for (let i = 0; i < cartData.length; i++) {
                totalPrice = totalPrice + cartData.map((item) => item.Price)[i] * cartData.map((item) => item.quantity)[i];
            }

            var total = document.getElementById('total')
            total.textContent = totalPrice + ' VNĐ';
        });

        var totalPrice=0;
        for (let i = 0; i < cartData.length; i++) {
            totalPrice=totalPrice + cartData.map((item) => item.Price)[i]*cartData.map((item) => item.quantity)[i];
          }
        
        var total = document.getElementById('total')
        total.textContent = totalPrice + ' VNĐ';



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

    })
}
displayItems();

