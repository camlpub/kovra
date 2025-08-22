   <!-- Shop Cart Section Begin -->
   <section class="shop-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shop__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="cart__product__item">
                                        <img src="img/shop-cart/cp-1.jpg" alt="">
                                        <div class="cart__product__item__title">
                                            <h6>Chain bucket bag</h6>
                                            <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">$ 150.0</td>
                                    <td class="cart__quantity">
                                        <div class="pro-qty">
                                            <input type="text" value="1">
                                        </div>
                                    </td>
                                    <td class="cart__total">$ 300.0</td>
                                    <td class="cart__close"><span class="icon_close"></span></td>
                                </tr>
                                <tr>
                                    <td class="cart__product__item">
                                        <img src="img/shop-cart/cp-2.jpg" alt="">
                                        <div class="cart__product__item__title">
                                            <h6>Zip-pockets pebbled tote briefcase</h6>
                                            <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">$ 170.0</td>
                                    <td class="cart__quantity">
                                        <div class="pro-qty">
                                            <input type="text" value="1">
                                        </div>
                                    </td>
                                    <td class="cart__total">$ 170.0</td>
                                    <td class="cart__close"><span class="icon_close"></span></td>
                                </tr>
                                <tr>
                                    <td class="cart__product__item">
                                        <img src="img/shop-cart/cp-3.jpg" alt="">
                                        <div class="cart__product__item__title">
                                            <h6>Black jean</h6>
                                            <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">$ 85.0</td>
                                    <td class="cart__quantity">
                                        <div class="pro-qty">
                                            <input type="text" value="1">
                                        </div>
                                    </td>
                                    <td class="cart__total">$ 170.0</td>
                                    <td class="cart__close"><span class="icon_close"></span></td>
                                </tr>
                                <tr>
                                    <td class="cart__product__item">
                                        <img src="img/shop-cart/cp-4.jpg" alt="">
                                        <div class="cart__product__item__title">
                                            <h6>Cotton Shirt</h6>
                                            <div class="rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="cart__price">$ 55.0</td>
                                    <td class="cart__quantity">
                                        <div class="pro-qty">
                                            <input type="text" value="1">
                                        </div>
                                    </td>
                                    <td class="cart__total">$ 110.0</td>
                                    <td class="cart__close"><span class="icon_close"></span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="cart__btn">
                        <a href="#">Continue Shopping</a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="cart__btn update__btn">
                        <a href="#"><span class="icon_loading"></span> Update cart</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="discount__content">
                        <h6>Discount codes</h6>
                        <form action="#">
                            <input type="text" placeholder="Enter your coupon code">
                            <button type="submit" class="site-btn">Apply</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-2">
                    <div class="cart__total__procced">
                        <h6>Cart total</h6>
                        <ul>
                            <li>Subtotal <span>$ 750.0</span></li>
                            <li>Total <span>$ 750.0</span></li>
                        </ul>
                        <a href="#" class="primary-btn">Proceed to checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Cart Section End -->


    <script>

<script>
async function loadCart() {
  try {
    // 🔹 Cambia esta URL por la de tu API real
    const res = await fetch("http://localhost/kovra_ultimo/app/api/?controller=carrito");
    const data = await res.json();

    const tbody = document.getElementById("cart-body");
    tbody.innerHTML = "";

    let subtotal = 0;

    data.products.forEach((item, index) => {
      const total = item.price * item.quantity;
      subtotal += total;

      const row = document.createElement("tr");
      row.innerHTML = `
        <td class="cart__product__item">
          <img src="${item.image}" alt="${item.name}">
          <div class="cart__product__item__title">
            <h6>${item.name}</h6>
          </div>
        </td>
        <td class="cart__price">$${item.price.toFixed(2)}</td>
        <td class="cart__quantity">
          <input type="number" min="1" value="${item.quantity}" data-index="${index}" class="qty-input">
        </td>
        <td class="cart__total">$${total.toFixed(2)}</td>
        <td class="cart__close" data-index="${index}">✖</td>
      `;
      tbody.appendChild(row);
    });

    document.getElementById("subtotal").textContent = `$${subtotal.toFixed(2)}`;
    document.getElementById("total").textContent = `$${subtotal.toFixed(2)}`;

    // 🔹 Eventos de cambio de cantidad
    document.querySelectorAll(".qty-input").forEach(input => {
      input.addEventListener("change", async (e) => {
        const index = e.target.dataset.index;
        const newQty = e.target.value;

        // Opcional: actualizar en API
        await fetch("http://localhost/kovra_ultimo/app/api/?controller=carrito/update", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ productIndex: index, quantity: newQty })
        });

        loadCart(); // recarga el carrito
      });
    });

    // 🔹 Eliminar producto
    document.querySelectorAll(".cart__close").forEach(btn => {
      btn.addEventListener("click", async (e) => {
        const index = e.target.dataset.index;

        await fetch("http://localhost/kovra_ultimo/app/api/?controller=carrito/delete", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ productIndex: index })
        });

        loadCart();
      });
    });

  } catch (error) {
    console.error("Error cargando el carrito:", error);
  }
}

// Inicializar
document.addEventListener("DOMContentLoaded", loadCart);
</script>


    </script>