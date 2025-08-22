  
  <style>

.grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 20px;
}

.product-card {
    position: relative;
    background: #fff;
    overflow: hidden;
    border-radius: 8px;
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
    transition: transform .3s;
}

.product-card:hover {
    transform: translateY(-6px);
    box-shadow: 0 6px 18px rgba(0, 0, 0, 0.15);
}

.product-image {
    position: relative;
    width: 100%;
    aspect-ratio: 3/4;
    overflow: hidden;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform .5s ease;
}

.product-card:hover .product-image img {
    transform: scale(1.05);
}

.badge {
    position: absolute;
    top: 12px;
    left: 12px;
    background: #000;
    color: #fff;
    padding: 4px 10px;
    font-size: 12px;
    text-transform: uppercase;
    border-radius: 4px;
}

.product-actions {
    position: absolute;
    bottom: -50px;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    gap: 10px;
    transition: bottom .4s;
}

.product-card:hover .product-actions {
    bottom: 12px;
}

.product-actions a {
    width: 36px;
    height: 36px;
    background: rgba(255, 255, 255, 0.9);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #333;
    font-size: 16px;
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
    transition: background .3s, color .3s;
}

.product-actions a:hover {
    background: #000;
    color: #fff;
}

.product-info {
    padding: 12px;
    text-align: center;
}

.product-info h3 {
    font-size: 15px;
    margin: 8px 0;
    font-weight: 500;
    color: #111;
}

.product-info p {
    font-size: 16px;
    font-weight: 700;
    margin: 0;
    color: #111;
}

@media (max-width: 1100px) {
    .grid {
        grid-template-columns: repeat(3, 1fr);
    }
}

@media (max-width: 800px) {
    .grid {
        grid-template-columns: repeat(2, 1fr);
    }
}

@media (max-width: 500px) {
    .grid {
        grid-template-columns: 1fr;
    }
}

    .product-info .price-new {
    color: #e63946;
    font-weight: 700;
    font-size: 16px;
    margin-right: 8px;
}

.product-info .price-old {
    text-decoration: line-through;
    color: #888;
    font-size: 14px;
}

.product-info .offer {
    font-size: 12px;
    color: #e63946;
    margin-top: 4px;
}
  </style>
  
  <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__left product__thumb nice-scroll">
                            <a class="pt active" href="#product-1">
                                <img src="img/product/details/thumb-1.jpg" alt="">
                            </a>
                            <a class="pt" href="#product-2">
                                <img src="img/product/details/thumb-2.jpg" alt="">
                            </a>
                            <a class="pt" href="#product-3">
                                <img src="img/product/details/thumb-3.jpg" alt="">
                            </a>
                            <a class="pt" href="#product-4">
                                <img src="img/product/details/thumb-4.jpg" alt="">
                            </a>
                        </div>
                        <div class="product__details__slider__content">
                            <div class="product__details__pic__slider owl-carousel">
                                <img data-hash="product-1" class="product__big__img"
                                    src="img/product/details/product-1.jpg" alt="">
                                <img data-hash="product-2" class="product__big__img"
                                    src="img/product/details/product-3.jpg" alt="">
                                <img data-hash="product-3" class="product__big__img"
                                    src="img/product/details/product-2.jpg" alt="">
                                <img data-hash="product-4" class="product__big__img"
                                    src="img/product/details/product-4.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <h3>Essential structured blazer <span>Brand: SKMEIMore Men Watches from SKMEI</span></h3>

                        <div class="product__details__price">$ 75.0 </div>
                        <p>Nemo enim ipsam voluptatem quia aspernatur aut odit aut loret fugit, sed quia consequuntur
                            magni lores eos qui ratione voluptatem sequi nesciunt.</p>
                        <div class="product__details__button">
                            <div class="quantity">
                                <span>Cantidad:</span>
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                            <a href="#" class="cart-btn"><span class="icon_bag_alt"></span>Añadir</a>
                            <ul>
                                <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            </ul>
                        </div>
                        <div class="product__details__widget">
                            <ul>
                                <li>
                                    <span>Talla:</span>
                                    <div class="size__btn">
                                        <label for="xs-btn" class="active">
                                            <input type="radio" id="xs-btn">
                                            xs
                                        </label>
                                        <label for="s-btn">
                                            <input type="radio" id="s-btn">
                                            s
                                        </label>
                                        <label for="m-btn">
                                            <input type="radio" id="m-btn">
                                            m
                                        </label>
                                        <label for="l-btn">
                                            <input type="radio" id="l-btn">
                                            l
                                        </label>
                                    </div>
                                </li>
                                <li>
                                    <span>Color:</span>
                                    <div class="size__btn">
                                        <label for="xs-btn" class="active">
                                            <input type="radio" id="xs-btn">
                                            Azul
                                        </label>
                                        <label for="s-btn">
                                            <input type="radio" id="s-btn">
                                            Vainilla
                                        </label>
                                        <label for="m-btn">
                                            <input type="radio" id="m-btn">
                                            Negro
                                        </label>
                                        <label for="l-btn">
                                            <input type="radio" id="l-btn">
                                            Blanco
                                        </label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">Description</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <h6>Description</h6>
                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut loret fugit, sed
                                    quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt loret.
                                    Neque porro lorem quisquam est, qui dolorem ipsum quia dolor si. Nemo enim ipsam
                                    voluptatem quia voluptas sit aspernatur aut odit aut loret fugit, sed quia ipsu
                                    consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Nulla
                                    consequat massa quis enim.</p>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget
                                    dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes,
                                    nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium
                                    quis, sem.</p>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <h6>Specification</h6>
                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut loret fugit, sed
                                    quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt loret.
                                    Neque porro lorem quisquam est, qui dolorem ipsum quia dolor si. Nemo enim ipsam
                                    voluptatem quia voluptas sit aspernatur aut odit aut loret fugit, sed quia ipsu
                                    consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Nulla
                                    consequat massa quis enim.</p>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget
                                    dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes,
                                    nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium
                                    quis, sem.</p>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <h6>Reviews ( 2 )</h6>
                                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut loret fugit, sed
                                    quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt loret.
                                    Neque porro lorem quisquam est, qui dolorem ipsum quia dolor si. Nemo enim ipsam
                                    voluptatem quia voluptas sit aspernatur aut odit aut loret fugit, sed quia ipsu
                                    consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Nulla
                                    consequat massa quis enim.</p>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget
                                    dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes,
                                    nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium
                                    quis, sem.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
                <div class="col-lg-12 text-center">
                    <div class="related__title">
                        <h5>Productos similares</h5>
                    </div>
                </div>
            <div class="grid">

                <div class="product-card accessories">
                    <div class="product-image">
                        <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
                        <div class="badge discount">60% OFF</div>
                        <div class="product-actions">
                            <a href="#"><i class="fa fa-search"></i></a>
                            <a href="#"><i class="fa fa-heart"></i></a>
                            <a href="#"><i class="fa fa-shopping-bag"></i></a>
                        </div>
                    </div>
                    <div class="product-info">
                        <h3>Moving With Flow Hoop Earrings - Gold</h3>
                        <p>
                            <span class="price-new">$1.48</span>
                            <span class="price-old">$3.99</span>
                        </p>
                        <p class="offer">60-80% Off All Sale! Prices As Marked</p>
                    </div>
                </div>

                <div class="product-card accessories">
                    <div class="product-image">
                        <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
                        <!-- <div class="badge discount">60% OFF</div> -->
                        <div class="badge">New</div>
                        <div class="product-actions">
                            <a href="#"><i class="fa fa-search"></i></a>
                            <a href="#"><i class="fa fa-heart"></i></a>
                            <a href="#"><i class="fa fa-shopping-bag"></i></a>
                        </div>
                    </div>
                    <div class="product-info">
                        <h3>Moving With Flow Hoop Earrings - Gold</h3>
                        <p>
                            <span class="price-new">$1.48</span>
                            <span class="price-old">$3.99</span>
                        </p>
                        <p class="offer">60-80% Off All Sale! Prices As Marked</p>
                    </div>
                </div>

                <div class="product-card accessories">
                    <div class="product-image">
                        <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
                        <div class="badge discount">60% OFF</div>
                        <div class="product-actions">
                            <a href="#"><i class="fa fa-search"></i></a>
                            <a href="#"><i class="fa fa-heart"></i></a>
                            <a href="#"><i class="fa fa-shopping-bag"></i></a>
                        </div>
                    </div>
                    <div class="product-info">
                        <h3>Moving With Flow Hoop Earrings - Gold</h3>
                        <p>
                            <span class="price-new">$1.48</span>
                            <span class="price-old">$3.99</span>
                        </p>
                        <p class="offer">60-80% Off All Sale! Prices As Marked</p>
                    </div>
                </div>

                <div class="product-card accessories">
                    <div class="product-image">
                        <img src="img/product/product-1.jpg" alt="Moving With Flow Hoop Earrings - Gold">
                        <!-- <div class="badge discount">60% OFF</div> -->
                        <div class="badge">New</div>
                        <div class="product-actions">
                            <a href="#"><i class="fa fa-search"></i></a>
                            <a href="#"><i class="fa fa-heart"></i></a>
                            <a href="#"><i class="fa fa-shopping-bag"></i></a>
                        </div>
                    </div>
                    <div class="product-info">
                        <h3>Moving With Flow Hoop Earrings - Gold</h3>
                        <p>
                            <span class="price-new">$1.48</span>
                            <span class="price-old">$3.99</span>
                        </p>
                        <p class="offer">60-80% Off All Sale! Prices As Marked</p>
                    </div>
                </div>
            </div>
        </div>
    </section>