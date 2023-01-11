const cartData = localStorage.getItem('cart') ? JSON.parse(localStorage.getItem('cart')) : []
console.log(cartData);

function displayItems() {
       
    var cart=document.getElementById('cart')

    const CartData=cartData;
    CartData.map(item=>{

        var itemCard=document.createElement('div');
        itemCard.setAttribute('id','sellingFood');

        var itemImg=document.createElement('img');
        itemImg.src=item.ImageStore;

        const inforDiv = document.createElement('div');

        var itemName=document.createElement('p');
        itemName.textContent = item.StoreName;

        var itemAddr=document.createElement('p');
        itemAddr.textContent="Địa chỉ: " + item.Adress;

        var itemDesc=document.createElement('p');
        itemDesc.textContent="Mô tả: " +item.Description;

        var itemRating=document.createElement('p');
        itemRating.textContent="Đánh giá: " +item.Rating;

        var itemPrice=document.createElement('p');
        itemPrice.textContent="Giá cả: " +item.Price;

        var Button = document.createElement('button');
        Button.setAttribute('class','addToCart');
        Button.textContent = 'Thêm vào giỏ hàng';

        itemCard.appendChild(itemImg);
        itemCard.appendChild(inforDiv);
        inforDiv.appendChild(itemName);
        inforDiv.appendChild(itemAddr);
        inforDiv.appendChild(itemDesc);
        inforDiv.appendChild(itemRating);
        inforDiv.appendChild(itemPrice);

        itemCard.appendChild(Button);

        cart.appendChild(itemCard);
    })


   
}
displayItems();