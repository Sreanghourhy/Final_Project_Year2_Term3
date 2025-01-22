<?php
@include 'config.php';

session_start();
$user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : null;
function redirectToLogin() {
    header('Location: login.php');
    exit; 
}

if (isset($_POST['add_to_wishlist']) || isset($_POST['add_to_cart'])) {
    if (!$user_id) {
        redirectToLogin();
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
</head>
<body>
   
<?php include 'header.php'; ?>

<section class="about">

   <div class="row">

      <div class="box">
         <img src="images/about-img-1.png" alt="">
         <h3>why choose us?</h3>
         <p>Our carefully curated selection of plants not only enhances the aesthetic appeal of your space but also promotes a healthier indoor environment. With our expertise in plant care and air purification, we offer a solution that not only beautifies your home but also contributes to your overall well-being. Choose Ubun Jungle for a greener, healthier, and more vibrant living environment that you and your family deserve.</p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

      <div class="box">
         <img src="images/about-img-2.png" alt="">
         <h3>what we provide?</h3>
         <p>At Ubun Jungle, we provide a comprehensive range of services tailored to meet your indoor greenery needs. From curated collections of diverse plant species to personalized care tips and maintenance guidance, we offer everything you need to create a thriving indoor jungle. Our expertise extends beyond mere plant provision; we also specialize in air-purifying solutions and wellness-enhancing botanical arrangements.</p>
         <a href="shop.php" class="btn">our shop</a>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">clients reivews</h1>

   <div class="box-container">
 
      <div class="box">
         <img src="images/7.jpg" alt="">
         <p>"Ubun Jungle has truly transformed my home into a haven of health and vitality. The lush greenery not only adds aesthetic appeal but also purifies the air, making it feel fresher and cleaner.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
         </div>
         <h3>Mr.Sovannarong</h3>
      </div>

      <div class="box">
         <img src="images/2.jpg" alt="">
         <p>I've noticed a significant improvement in my overall well-being since introducing Ubun Jungle to my living space. The soothing presence of plants has reduced stress levels and enhanced my mood remarkably.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Mr .Khun</h3>
      </div>

      <div class="box">
         <img src="images/3.jpg" alt="">
         <p>Ubun Jungle has exceeded my expectations in promoting a healthier indoor environment. With its diverse range of plants, it has effectively reduced indoor pollutants, allowing me to breathe easier and sleep better.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
         </div>
         <h3>Mr .Vath</h3>
      </div>

      <div class="box">
         <img src="images/4.jpg" alt="">
         <p>Thanks to Ubun Jungle, my family and I have experienced fewer allergies and respiratory issues. The air quality in our home has noticeably improved, and we feel rejuvenated being surrounded by such vibrant greenery.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Mr .Ranith</h3>
      </div>

      <div class="box">
         <img src="images/5.jpg" alt="">
         <p>I highly recommend Ubun Jungle to anyone seeking to enhance their indoor air quality and overall wellness. It's not just a product; it's a lifestyle upgrade that brings nature's healing touch right into your home.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Ms .Khom</h3>
      </div>

      <div class="box">
         <img src="images/6.jpg" alt="">
         <p>Ubun Jungle has become an integral part of my wellness routine. Its low-maintenance design makes it easy to care for, and the benefits it provides in terms of air purification and mental well-being are truly invaluable.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
         </div>
         <h3>Ms .Chet</h3>
      </div>

   </div>

</section>
<?php include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>