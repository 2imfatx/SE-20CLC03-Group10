var cartData = localStorage.getItem('cart') ? JSON.parse(localStorage.getItem('cart')) : []
var ComGaStore = [];

function displayItems(data) {
    const xhr = new XMLHttpRequest();
    const url = 'http://localhost:3000/api/ComGa';
    xhr.open("GET", url);
    xhr.send();

    xhr.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            var res = xhr.responseText;

            try {
                ComGaStore = JSON.parse(res);
            } catch (err) {
                console.log(err);
            }

            const ComGa = document.getElementById('ComGa');

            if (!data) data = ComGaStore;
            ComGa.innerHTML = "";

            data.map(item => {

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
                Button.textContent = 'Thêm vào giỏ hàng';
                Button.addEventListener('click', addToCart);

                itemCard.appendChild(itemImg);
                itemCard.appendChild(inforDiv);
                inforDiv.appendChild(itemName);
                inforDiv.appendChild(itemAddr);
                inforDiv.appendChild(itemDesc);
                inforDiv.appendChild(itemRating);
                inforDiv.appendChild(itemPrice);

                itemCard.appendChild(Button);

                ComGa.appendChild(itemCard);
            });
            function addToCart() {
                const nameElement = this.parentNode.querySelector('p:first-child');
                const itemName = nameElement.textContent;

                var itemObj = ComGaStore.find(element => element.StoreName == itemName);
                var existingItem = cartData.find(element => element.StoreName == itemName);
                if (existingItem) {
                    existingItem.quantity += 1;
                } else {
                    itemObj.quantity = 1;
                    cartData.push(itemObj);
                }
                console.log(cartData);
                localStorage.setItem('cart', JSON.stringify(cartData));
            }
        }
    }
}

// Add search functionality
const searchButton = document.getElementById('searchButton');

searchButton.addEventListener('click', searchForItem);
searchButton.addEventListener('click', function () {
    if (searchBox.value != "") searchForItem();
});

function searchForItem() {
    const searchValue = searchBox.value.toLowerCase();
    console.log(searchValue);
    const filteredData = ComGaStore.filter(item => item.StoreName.toLowerCase().includes(searchValue));
    const ComGa = document.getElementById('ComGa');
    console.log(filteredData);
    ComGa.innerHTML = '';
    displayItems(filteredData);
}

const searchBox = document.querySelector('.searchBox input[type="text"]');
searchBox.addEventListener("keyup", function (event) {
    event.preventDefault();
    if (event.keyCode === 13 && searchBox.value!="") { // 13 is the keycode for Enter
        searchForItem();
    }
});

const sortButton = document.getElementById('sortButton');
if(sortButton){
    sortButton.addEventListener('click', sortByRating);
}

function sortByRating() {
    const sortedData = ComGaStore.sort((a, b) => b.Rating - a.Rating);
    const ComGa = document.getElementById('ComGa');
    ComGa.innerHTML = '';
    displayItems(sortedData);
}


displayItems();