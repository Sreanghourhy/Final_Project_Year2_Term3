<?php

// Check if session is not already started
if (session_status() == PHP_SESSION_NONE) {
    session_start(); // Start session if not already started
}

// Assuming $user_id is set after successful login
$user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : null;

// Function to fetch user profile information
function fetchUserProfile($conn, $user_id) {
    $select_profile = $conn->prepare("SELECT * FROM `users` WHERE id = ?");
    $select_profile->execute([$user_id]);
    return $select_profile->fetch(PDO::FETCH_ASSOC);
}

?>

<header class="header">

   <div class="flex">
      
      <a href="home.php" class="logo" ><img src="images/1.jpg" alt="" width="70" height="85"></a>

      <nav class="navbar">
         <a href="home.php">home</a>
         <a href="shop.php">shop</a>
         <a href="orders.php">orders</a>
         <a href="about.php">about</a>
         <a href="contact.php">contact</a>
      </nav>

      <div class="icons">
         <div id="menu-btn" class="fas fa-bars"></div>
         <?php if ($user_id): ?>
         <div id="user-btn" class="fas fa-user"></div>
         <?php else: ?>
         <a href="login.php" class="fas fa-user"></a>
         <?php endif; ?>
         <a href="search_page.php" class="fas fa-search"></a>
         <?php if ($user_id): ?>
         <?php
            // Fetch cart and wishlist counts if user is logged in
            $count_cart_items = $conn->prepare("SELECT * FROM `cart` WHERE user_id = ?");
            $count_cart_items->execute([$user_id]);
            $count_wishlist_items = $conn->prepare("SELECT * FROM `wishlist` WHERE user_id = ?");
            $count_wishlist_items->execute([$user_id]);
         ?>
         <a href="wishlist.php"><i class="fas fa-heart"></i><span>(<?= $count_wishlist_items->rowCount(); ?>)</span></a>
         <a href="cart.php"><i class="fas fa-shopping-cart"></i><span>(<?= $count_cart_items->rowCount(); ?>)</span></a>
         <?php endif; ?>
      </div>

      <?php if ($user_id): ?>
      <div class="profile">
         <?php
            $fetch_profile = fetchUserProfile($conn, $user_id);
         ?>
         <img src="uploaded_img/<?= $fetch_profile['image']; ?>" alt="">
         <p><?= $fetch_profile['name']; ?></p>
         <a href="user_profile_update.php" class="btn">update profile</a>
         <a href="logout.php" class="delete-btn">logout</a>
      </div>
      <?php else: ?>
      <div class="profile">
         <div class="flex-btn">
            <a href="login.php" class="option-btn">login</a>
            <a href="register.php" class="option-btn">register</a>
         </div>
      </div>
      <?php endif; ?>

   </div>

</header>
