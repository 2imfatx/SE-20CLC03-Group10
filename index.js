import {foodItem} from './foodItem.js'

console.log(foodItem);

function displayItems()
{
    var ComGa=document.getElementById('ComGa')

    const ComGaData=foodItem.filter(item=>item.category=='Cơm gà')
    console.log(ComGaData);

    ComGaData.map(item=>{

        var itemCard=document.createElement('div')
        itemCard.setAttribute('id','sellingFood');

        var itemImg=document.createElement('img')
        itemImg.src=item.img;

        const inforDiv = document.createElement('div');

        var itemName=document.createElement('p')
        itemName.textContent = item.name;

        var itemAddr=document.createElement('p')
        itemAddr.textContent="Địa chỉ: " + item.addr;

        var itemDesc=document.createElement('p')
        itemDesc.textContent="Mô tả: " +item.desc;

        var itemRating=document.createElement('p')
        itemRating.textContent="Đánh giá: " +item.rating;

        var itemPrice=document.createElement('p')
        itemPrice.textContent="Giá cả: " +item.price;

        const Button = document.createElement('button');
        Button.textContent = ' Thêm vào giỏ hàng';

        itemCard.appendChild(itemImg)
        itemCard.appendChild(inforDiv)
        inforDiv.appendChild(itemName)
        inforDiv.appendChild(itemAddr)
        inforDiv.appendChild(itemDesc)
        inforDiv.appendChild(itemRating)
        inforDiv.appendChild(itemPrice)

        itemCard.appendChild(Button);

        ComGa.appendChild(itemCard)
    })

}
displayItems();