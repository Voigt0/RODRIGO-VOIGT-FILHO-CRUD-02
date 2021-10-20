<!DOCTYPE html>
<?php   
   include_once "conf/default.inc.php";
   require_once "conf/Conexao.php";
   $title = "PESSOA";
   $busca = isset($_POST["busca"]) ? $_POST["busca"] : "id";
   $procurar = isset($_POST["procurar"]) ? $_POST["procurar"] : "";
?>
<html>
<head>
    <meta charset="UTF-8">
    <title> <?php echo $title; ?> </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
       body {
            right: 200px;
       } 
    </style>
</head>
<body class="">
    <?php include "menu.php"; ?>
    <form method="post">
        <input type="radio" id="id" name="busca" value="id" <?php if($busca == "id"){echo "checked";}?>>
        <label for="huey"><h3>#ID</h3></label><br>
        <input type="radio" id="nome" name="busca" value="nome" <?php if($busca == "nome"){echo "checked";}?>>
        <label for="huey"><h3>NOME</h3></label><br> 
        <input type="radio" id="idade" name="busca" value="idade" <?php if($busca == "idade"){echo "checked";}?>>
        <label for="huey"><h3>IDADE</h3></label><br>
        <br><br>
        <div class="" style="padding-left: 10%;">
            <legend>Procurar: </legend>
            <input type="text"   name="procurar" id="procurar" size="37" value="<?php echo $procurar;?>">
            <button type="submit" class="btn btn-dark" name="acao" id="acao">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
            </svg>
            </button>
            <br><br>
        </div>
            <div class="">
            <table class="table table-striped">
                <thead>
                    <tr class="table-dark">
                        <th scope="col">#ID</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Hora de entrada</th>
                        <th scope="col">Hora de saída</th>
                        <th scope="col">Idade</th>
                    </tr>
                </thead>
                <tbody>
    <?php
        $type = "LIKE";
        $procurar = "'%". trim($procurar) ."%'";
        if($busca != "nome" && $busca != "id"){
            $type = "<=";
        $procurar = ($_POST["procurar"]);
            if(is_numeric($procurar) == false){
                $procurar = 9999;
            }
        }
        $pdo = Conexao::getInstance();
        $consulta = $pdo->query("SELECT * FROM pessoa 
                                 WHERE $busca $type $procurar
                                 ORDER BY $busca");
        
            while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
    ?>
                    <tr>
                        <th scope="row"><?php echo $linha['id'];?></th>
                        <td><?php echo $linha['nome'];?></td>
                        <td><?php echo date("h:i:s A", strtotime($linha['horaEntrada']));?></td>
                        <td><?php echo date("h:i:s A", strtotime($linha['horaSaida']));?></td>
                        <td><?php echo $linha['idade'];?></td>
                    </tr>
    <?php } ?> 
                </tbody>
            </table>
            </div>
    </form>
</body>
</html>