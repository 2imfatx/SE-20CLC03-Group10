// const {foodItem} = require('./index.js');

function displayItems() {
    const xhr = new XMLHttpRequest();
    const url = 'http://localhost:3000/api/ComGa';
    xhr.open("GET", url);
    xhr.send();
    var ComGaStore=[];
    xhr.onreadystatechange = (e) => {
        var res=xhr.responseText; 

        try{
            ComGaStore = JSON.parse(res);
            // console.log(ComGaStore);          
        }catch(err){
            console.log(err);
        }
       
        var ComGa=document.getElementById('ComGa')

        const ComGaData=ComGaStore;

        ComGaData.map(item=>{
    
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
            Button.textContent = ' Thêm vào giỏ hàng';
    
            itemCard.appendChild(itemImg);
            itemCard.appendChild(inforDiv);
            inforDiv.appendChild(itemName);
            inforDiv.appendChild(itemAddr);
            inforDiv.appendChild(itemDesc);
            inforDiv.appendChild(itemRating);
            inforDiv.appendChild(itemPrice);
    
            itemCard.appendChild(Button);
    
            ComGa.appendChild(itemCard);
        })
        
        
    
    }
  
   
    // var ComGa=document.getElementById('ComGa');

    // var itemCard=document.createElement('div')
    // itemCard.setAttribute('id','sellingFood');

    // var itemImg=document.createElement('img')
    // itemImg.src=res.ImageStore;

    // const inforDiv = document.createElement('div');

    // var itemName=document.createElement('p')
    // itemName.textContent = res.StoreName;

    // var itemAddr=document.createElement('p')
    // itemAddr.textContent="Địa chỉ: " + res.Adrss;

    // var itemDesc=document.createElement('p')
    // itemDesc.textContent="Mô tả: " +res.Descriptions;

    // var itemRating=document.createElement('p')
    // itemRating.textContent="Đánh giá: " +res.Rating;

    // var itemPrice=document.createElement('p')
    // itemPrice.textContent="Giá cả: " +res.Price;

    // const Button = document.createElement('button');
    // Button.textContent = ' Thêm vào giỏ hàng';

    // itemCard.appendChild(itemImg)
    // itemCard.appendChild(inforDiv)
    // inforDiv.appendChild(itemName)
    // inforDiv.appendChild(itemAddr)
    // inforDiv.appendChild(itemDesc)
    // inforDiv.appendChild(itemRating)
    // inforDiv.appendChild(itemPrice)

    // itemCard.appendChild(Button);

    // ComGa.appendChild(itemCard)


   
}
displayItems();

document.querySelectorAll('.addToCart').forEach(item => {
    item.addEventListener('click',()=>console.log(3));
});

const cartData=[];

function addToCart(){
    console.log(this);
    const nameElement = this.parentNode.querySelector('p:first-child');
    const itemName = nameElement.textContent;

    var itemObj = foodItem.find(element=>element.name==itemName);
    cartData.push(itemObj);
    console.log(cartData);

}