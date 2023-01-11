
function displayItems() {
    const xhr = new XMLHttpRequest();
    const url = 'http://localhost:3000/api/BunDau';
    xhr.open("GET", url);
    xhr.send();
    var BunDauStore=[];
    xhr.onreadystatechange = (e) => {
        var res=xhr.responseText; 

        try{
            BunDauStore = JSON.parse(res);
            // console.log(BunDauStore);          
        }catch(err){
            console.log(err);
        }
       
        var BunDau=document.getElementById('BunDau')

        const BunDauData=BunDauStore;

        BunDauData.map(item=>{
    
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
    
            BunDau.appendChild(itemCard);
        })   
    }
}
displayItems();
