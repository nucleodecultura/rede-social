<!-- boxicons -->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/site.webmanifest">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../style.css">

<nav class="navbar navbar-expand-lg bg-light fixed-top">
    <a class="navbar-brand" href="feed.php" style="padding-left: 10px">
        <img src="images/gato.png" width="30" height="30" class="d-inline-block align-top" alt="">
        CatLab
    </a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    </div>
    <?php
    include_once('includes/conexao.php');
    //Bem vindo
    session_start();

    $query_topo = 'SELECT id_usuario, apelido FROM usuario WHERE status = 1 and id_usuario = ' . $_SESSION['id'] . '';
    $result_topo = mysqli_query($conexao, $query_topo);

    if ($row_topo = mysqli_fetch_array($result_topo)) {
    ?>
        <div class="nav-item dropdown" style="margin-right: 20px;">
            <a href="#" data-toggle="dropdown" class="nav-item nav-link dropdown-toggle user-action">Bem Vindo <?php echo $row_topo['apelido'] ?> <b class="caret"></b></a>
            <div class="dropdown-menu">
                <a href="perfil.php?uid=<?php echo $row_topo['id_usuario'] ?>" class="dropdown-item d-flex"><i class='bx bxs-home' style="margin-right: 5px;"></i> Perfil</a>
                <div class="divider dropdown-divider"></div>
                <a href="logout.php" class="dropdown-item d-flex"><i class='bx bx-log-in' style="margin-right: 5px;"></i> Sair</a>
            </div>
        <?php } ?>
        </div>
        <button class="navbar-toggler mt-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
</nav>