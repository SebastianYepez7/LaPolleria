<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="librerias/header.jsp"%>

<!-- Hero principal -->
<section class="text-white text-center py-5" style="background: url('images/familia-comiendo.png') no-repeat center center / cover; min-height: 85vh;">
    <div class="container py-5 bg-dark bg-opacity-50 rounded">
        <h1 class="display-4 fw-bold">¡Bienvenido a La Pollería!</h1>
        <p class="lead">El mejor sabor de pollo broaster, rápido y crujiente</p>
        <a href="pedidos.jsp" class="btn btn-warning btn-lg mt-3 shadow">Haz tu pedido ahora</a>
    </div>
</section>

<!-- Menú popular con carrusel -->
<section class="container my-5">
    <h2 class="text-center mb-4 fw-bold">Nuestros Recomendados</h2>
    <div id="menuCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">

            <!-- Slide 1 -->
            <div class="carousel-item active">
                <div class="row g-4">
                    <div class="col-md-4">
                        <div class="card h-100 shadow">
                            <img src="images/pollo-broaster.png" class="card-img-top" alt="Pollo Broaster">
                            <div class="card-body">
                                <h5 class="card-title">Pollo Broaster</h5>
                                <p class="card-text">Crujiente por fuera, jugoso por dentro.</p>
                                <a href="pedidos.jsp" class="btn btn-primary">Pedir ahora</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card h-100 shadow">
                            <img src="images/dedos.png" class="card-img-top" alt="Combo Familiar">
                            <div class="card-body">
                                <h5 class="card-title">Deditos de pollo</h5>
                                <p class="card-text">Solomillos de pechuga apanados, acompañados de papas y salsa rosada.</p>
                                <a href="pedidos.jsp" class="btn btn-primary">Pedir ahora</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card h-100 shadow">
                            <img src="images/alitas.png" class="card-img-top" alt="Alitas BBQ">
                            <div class="card-body">
                                <h5 class="card-title">Alitas BBQ</h5>
                                <p class="card-text">Con salsa BBQ o picantes.</p>
                                <a href="pedidos.jsp" class="btn btn-primary">Pedir ahora</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Slide 2 -->
            <div class="carousel-item">
                <div class="row g-4">
                    <div class="col-md-4">
                        <div class="card h-100 shadow">
                            <img src="images/salchipapa.png" class="card-img-top" alt="Salchipapas">
                            <div class="card-body">
                                <h5 class="card-title">Salchipapas</h5>
                                <p class="card-text">Papas fritas con salchicha, salsas y sabor.</p>
                                <a href="pedidos.jsp" class="btn btn-primary">Pedir ahora</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card h-100 shadow">
                            <img src="images/hamburguesa.png" class="card-img-top" alt="Hamburguesa Casera">
                            <div class="card-body">
                                <h5 class="card-title">Hamburguesa Casera</h5>
                                <p class="card-text">Carne 100% de pollo, pan artesanal.</p>
                                <a href="pedidos.jsp" class="btn btn-primary">Pedir ahora</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card h-100 shadow">
                            <img src="images/crispetas.png" class="card-img-top" alt="Nuggets">
                            <div class="card-body">
                                <h5 class="card-title">Nuggets de Pollo</h5>
                                <p class="card-text">Perfectos para niños o acompañamientos.</p>
                                <a href="pedidos.jsp" class="btn btn-primary">Pedir ahora</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!-- Controles -->
        <button class="carousel-control-prev" type="button" data-bs-target="#menuCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#menuCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
        </button>
    </div>
</section>


<!-- Beneficios -->
<section class="bg-light py-5">
    <div class="container text-center">
        <h2 class="mb-4 fw-bold">¿Por qué elegirnos?</h2>
        <div class="row">
            <div class="col-md-4">
                <i class="fas fa-star fa-3x text-warning mb-2"></i>
                <h5>Sabor Único</h5>
                <p>Receta secreta que deleita a todos los paladares.</p>
            </div>
            <div class="col-md-4">
                <i class="fas fa-clock fa-3x text-warning mb-2"></i>
                <h5>Entrega Rápida</h5>
                <p>¡Tu pedido en minutos, caliente y listo!</p>
            </div>
            <div class="col-md-4">
                <i class="fas fa-thumbs-up fa-3x text-warning mb-2"></i>
                <h5>Calidad Garantizada</h5>
                <p>Ingredientes frescos y atención al detalle.</p>
            </div>
        </div>
    </div>
</section>

<!-- CTA final -->
<section class="text-center py-5 text-white" style="background-color: #ff6600;">
    <h2 class="mb-3">¿Antojo de pollo?</h2>
    <p class="lead">Haz tu pedido ahora y disfruta el mejor pollo de la ciudad.</p>
    <a href="pedidos.jsp" class="btn btn-light btn-lg">¡Ordenar ya!</a>
</section>

<!-- Ubicación del restaurante -->
<section class="py-5 bg-white">
    <div class="container text-center">
        <h2 class="mb-4 fw-bold"><i class="fas fa-map-marker-alt text-danger me-2"></i>Nos encontramos aquí</h2>
        <p class="mb-3">Cl 18 #34 - 104, Pasto, Nariño, frente a la Universidad Mariana</p>
        <div class="ratio ratio-16x9">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15955.600259370969!2d-77.27499579999999!3d1.2292809999999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e2ed47eda893275%3A0xdd5dd37b8fe470c2!2sUniversidad%20Mariana!5e0!3m2!1ses-419!2sco!4v1743897732025!5m2!1ses-419!2sco" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
</section>

<!-- Opiniones de clientes -->
<section class="py-5 bg-light">
    <div class="container">
        <h2 class="text-center mb-5 fw-bold"><i class="fas fa-comments text-primary me-2"></i>Opiniones de nuestros clientes</h2>
        <div class="row g-4">
            <div class="col-md-4">
                <div class="card p-4 shadow-sm h-100">
                    <p>"El mejor pollo que he probado. ¡Volveré cada semana!"</p>
                    <div class="mt-3">
                        <strong>— Ana G.</strong><br/>
                        <span class="text-warning">★★★★★</span>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card p-4 shadow-sm h-100">
                    <p>"Súper rápido el domicilio y la comida llegó caliente."</p>
                    <div class="mt-3">
                        <strong>— Carlos R.</strong><br/>
                        <span class="text-warning">★★★★☆</span>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card p-4 shadow-sm h-100">
                    <p>"Buen precio, porciones generosas y excelente sabor."</p>
                    <div class="mt-3">
                        <strong>— Juliana M.</strong><br/>
                        <span class="text-warning">★★★★★</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    const carouselElement = document.querySelector('#menuCarousel');
    const carousel = new bootstrap.Carousel(carouselElement, {
        interval: 3000,
        ride: 'carousel'
    });
</script>


<%@include file="librerias/footer.jsp"%>
