function loadData(inputValue) {
    // logic to load data using input value
    console.log(inputValue);
}

function displayItems() {
    const xhr = new XMLHttpRequest();
    const url = 'http://localhost:3000/api/BanhMi';
    var BanhMiStore = [];
    xhr.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var res = xhr.responseText;

            try {
                BanhMiStore = JSON.parse(res);
                // console.log(BanhMiStore);          
            } catch (err) {
                console.log(err);
            }

            var BanhMi = document.getElementById('BanhMi')

            const BanhMiData = BanhMiStore;

            BanhMiData.map(item => {

                var itemCard = document.createElement('div');
                itemCard.setAttribute('id', 'sellingFood');

                var itemImg = document.createElement('img');
                itemImg.src = item.ImageStore;

                const inforDiv = document.createElement('div');

                var itemName = document.createElement('p');
                itemName.textContent = item.StoreName;

                var itemAddr = document.createElement('p');
                itemAddr.textContent = "Địa chỉ: " + item.Adress;

                var itemDesc = document.createElement('p');
                itemDesc.textContent = "Mô tả: " + item.Description;

                var itemRating = document.createElement('p');
                itemRating.textContent = "Đánh giá: " + item.Rating;

                var itemPrice = document.createElement('p');
                itemPrice.textContent = "Giá cả: " + item.Price;

                var Button = document.createElement('button');
                Button.setAttribute('class', 'addToCart');
                Button.textContent = ' Thêm vào giỏ hàng';

                itemCard.appendChild(itemImg);
                itemCard.appendChild(inforDiv);
                inforDiv.appendChild(itemName);
                inforDiv.appendChild(itemAddr);
                inforDiv.appendChild(itemDesc);
                inforDiv.appendChild(itemRating);
                inforDiv.appendChild(itemPrice);

                itemCard.appendChild(Button);

                BanhMi.appendChild(itemCard);
            })
        }
    }
    xhr.open("GET", url);
    xhr.send();

}
displayItems();
