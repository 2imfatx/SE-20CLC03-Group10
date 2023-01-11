const cartData = localStorage.getItem('cart') ? JSON.parse(localStorage.getItem('cart')) : []
console.log(cartData);

function displayItems() {
       
    var cart=document.getElementById('cart')

    var CartData=cartData;
    CartData.map(item=>{

        var itemCard=document.createElement('div');
        itemCard.setAttribute('id','sellingFood');

        var itemImg=document.createElement('img');
        itemImg.src=item.ImageStore;

        const inforDiv = document.createElement('div');

        var itemName=document.createElement('p');
        itemName.textContent = item.StoreName;

        var itemPrice=document.createElement('p');
        itemPrice.textContent="Giá cả: " +item.Price;

        var itemQuantity = document.createElement('div');
        itemQuantity.textContent = "Số lượng: " + item.quantity;
        var incrementButton = document.createElement('button');
        incrementButton.innerHTML = " + ";
        incrementButton.addEventListener("click", () => {
            item.quantity += 1;
            itemQuantity.textContent = "Số lượng: " + item.quantity;
        });
        var decrementButton = document.createElement('button');
        decrementButton.innerHTML = " - ";
        decrementButton.addEventListener("click", () => {
            if (item.quantity > 0) {
                item.quantity -= 1;
                itemQuantity.textContent = "Số lượng: " + item.quantity;
                if (item.quantity === 0) {
                    cart.removeChild(itemCard);
                    
                }
            }
        });

        itemCard.appendChild(itemImg);
        itemCard.appendChild(inforDiv);
        inforDiv.appendChild(itemName);
        inforDiv.appendChild(itemPrice);

        itemCard.appendChild(itemQuantity);
        itemCard.appendChild(incrementButton);
        itemCard.appendChild(decrementButton);
        

        cart.appendChild(itemCard);
    })


   
}
displayItems();