import {foodItem} from './foodItem.js'

console.log(foodItem);

function displayItems()
{
    var ComGa=document.getElementById('ComGa')

    const ComGaData=foodItem.filter(item=>item.category=='Cơm gà')
    console.log(ComGaData);

    ComGaData.map(item=>{

        var itemCard=document.createElement('div')
        itemCard.setAttribute('id','productOrder');

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
        
        const quanlityDiv = document.createElement('div');

        const quantityInput = document.createElement('input');
        quantityInput.type = 'number';
        quantityInput.min = '1';
        console.log(parseInt(quantityInput.value));
        console.log(parseInt(item.price));

        const subToTalDiv = document.createElement('div');

        const totalParagraph = document.createElement('p');
        totalParagraph.textContent = parseInt(quantityInput.value)*parseInt(item.price) + parseInt(item.price);


        const buttonlDiv = document.createElement('div');

        const Button = document.createElement('button');
        Button.textContent = ' Thêm vào giỏ hàng';



        itemCard.appendChild(itemImg)
        itemCard.appendChild(inforDiv)
        inforDiv.appendChild(itemName)
        inforDiv.appendChild(itemAddr)
        inforDiv.appendChild(itemDesc)
        inforDiv.appendChild(itemRating)
        inforDiv.appendChild(itemPrice)

        quanlityDiv.appendChild(quantityInput);
        itemCard.appendChild(quanlityDiv);

        subToTalDiv.appendChild(totalParagraph);
        itemCard.appendChild(subToTalDiv);

        buttonlDiv.appendChild(Button);
        itemCard.appendChild(buttonlDiv);


        ComGa.appendChild(itemCard)



    })

}
displayItems();