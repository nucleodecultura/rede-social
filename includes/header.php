  navbar
  <!-- boxicons -->
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

  <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
  <link rel="manifest" href="/site.webmanifest">
  <meta name="msapplication-TileColor" content="#da532c">
  <meta name="theme-color" content="#ffffff">

  <link rel="stylesheet" href="../style.css">

    <nav class="navbar navbar-expand-lg bg-light fixed-top">
    <a class="navbar-brand" href="feed.php" style="padding-left: 10px">
    <img src="images/gato.png" width="30" height="30" class="d-inline-block align-top" alt="">
    CatLab
  </a>
    <!-- Notifications -->
    <div class="notifications">
        
    </div>

    <!-- Search -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <form class="d-flex" role="search" method="post" action="search.php">
          <input class="form-control search-panel" style="border-color: black;" type="search" name="txtprocura" placeholder="Busca por amigo" aria-label="Search">
          <button class="btn btn-dark" style="margin-left: 5px;" type="submit" name="search">Procurar</button>
        </form>
      </div>
      <?php
      include_once('includes/conexao.php');

      //Bem vindo
      session_start();

      $query = 'SELECT id_usuario, apelido FROM usuario WHERE status = 1 and id_usuario = ' . $_SESSION['id'] . '';
      $result = mysqli_query($conexao, $query);

      if ($row = mysqli_fetch_array($result)) {
      ?>
        <div class="nav-item dropdown" style="margin-right: 20px;">
          <a href="#" data-toggle="dropdown" class="nav-item nav-link dropdown-toggle user-action">Bem Vindo <?php echo $row['apelido'] ?> <b class="caret"></b></a>
          <div class="dropdown-menu">
            <a href="perfil.php?uid=<?php echo $row['id_usuario'] ?>" class="dropdown-item d-flex"><i class='bx bxs-home' style="margin-right: 5px;color: darkgray;"></i> Perfil</a>
            <div class="divider dropdown-divider"></div>
            <a href="logout.php" class="dropdown-item d-flex"><i class='bx bx-log-in' style="margin-right: 5px; color: darkgray;"></i> Sair</a>
          </div>
        <?php } ?>
        </div>
        <button class="navbar-toggler mt-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    </nav>