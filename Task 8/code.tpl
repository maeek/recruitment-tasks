<!-- 
    File: templates/product.tpl
-->
<input type="text" name="incrementMoney">
<script>
    var priceElement = document.querySelector(".shb-new-price > span");
    var money = priceElement.innerText.split(" ")[1];
    let oldPrice = parseFloat(priceElement.innerText.replace(money, ""));
    let chars = 0;
    document.querySelector("input[name='incrementMoney']").addEventListener("input", function(e) {
        let newPrice = oldPrice;
        for (let i = 0; i < e.target.value.length; i++) {
            let price = parseFloat(priceElement.innerText.replace(money, ""));
            if (chars < e.target.value.length) {
                newPrice = price + 5;
            } else {
                newPrice = price - 5;
            }
        }
        priceElement.innerText = newPrice.toFixed(2) + " " + money;
        chars = e.target.value.length;
    });
</script>