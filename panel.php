<!-- 
    Código basado en JOSPROX MX | JOSPROX Internacional, con la unión de Facilito FX, Paoo CSS, Zara CSS y código de proyecto libre basado en JS.

    para más información de uso y propiedades favor de leer en el siguiente link oficial: https://josprox.com/politicas debido a la creación de este código, el cuál es independiente de la materia, creado con la tecnología de Facitio FX con la licencia de 2015 - 2021, para más información de licencia visite: https://github.com/josprox

     Por la presente se otorga con cargo, a cualquier persona que obtenga una copia de este software y los archivos de documentación asociados (el "Software"), para operar con el Software con restricciones, incluidos, entre otros, los derechos de uso, copia, modificación, fusión , publicar, distribuir, sublicenciar y / o vender copias del Software, y permitir que las personas a las que se les proporcione el Software lo hagan, sujeto a las siguientes condiciones:

    El aviso de copyright anterior y este aviso de permiso se incluirán en todas las copias o partes sustanciales del Software.

    EL SOFTWARE SE PROPORCIONA "TAL CUAL", SIN GARANTÍA DE NINGÚN TIPO, EXPRESA O IMPLÍCITA, INCLUYENDO, PERO NO LIMITADO A, LAS GARANTÍAS DE COMERCIABILIDAD, APTITUD PARA UN PROPÓSITO PARTICULAR Y NO INFRACCIÓN. EN NINGÚN CASO LOS AUTORES O TITULARES DE LOS DERECHOS DE AUTOR SERÁN RESPONSABLES DE CUALQUIER RECLAMO, DAÑOS U OTRA RESPONSABILIDAD, YA SEA EN UNA ACCIÓN DE CONTRATO, AGRAVIO O DE OTRO MODO, QUE SURJA DE, FUERA DE O EN RELACIÓN CON EL SOFTWARE O EL USO U OTRAS NEGOCIACIONES EN EL SOFTWARE. 
 -->

<?php

include "ps-conexion/conexion.php";

session_start();
if (!isset($_SESSION['id_usuario'])) {
	header("Location: ./");
}
$iduser = $_SESSION['id_usuario'];

$sql = "SELECT usuarios.nombre, usuarios.img, usuarios.num_control, gradgrup.grado,gradgrup.grupo, especialidades.especialidad, turnos.turno FROM usuarios
INNER JOIN arg_alumno ON usuarios.id = arg_alumno.id_alm INNER JOIN gradgrup
ON arg_alumno.id_gg = gradgrup.id INNER JOIN especialidades
ON especialidades.id = arg_alumno.id_esp INNER JOIN turnos
ON arg_alumno.id_turn = turnos.id WHERE usuarios.id = '$iduser'";

$resultado = $conexion->query($sql);
$row = $resultado->fetch_assoc();

?>
<!DOCTYPE html>
<html lang="es-MX">
    <head>
    <?php include "ps-includes/metas.php"; ?>
        <title>Cestis CP</title>
        <link rel="stylesheet" href="ps-contenido/css/paps.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    </head>
    <body>
        
        <?php include "ps-includes/nav.php"; ?>

        <div class="contenedor">

            <div class="grid-cont">
                <section class="gd-sec">

                    <main class="info-per">
                        <div class="img-per">
                            <img src="ps-contenido/img/alumnos/<?php echo utf8_decode($row['img']);?>" alt="">
                        </div>
                        <div class="dat-per">
                            <h1>Bienvenido(a)</h1>
                            <p>Nombre registrado: <span><?php echo utf8_decode($row['nombre']);?></span></p>
                            <p>Tu número de control es: <span><?php echo utf8_decode($row['num_control']);?></span></p>
                            <p>Semestre: <span><?php echo utf8_decode($row['grado']);?></span> Grupo: <span><?php echo utf8_decode($row['grupo']);?></span> Especialidad: <span><?php echo utf8_decode($row['especialidad']);?></span></p>
                            <p>Turno: <span><?php echo utf8_decode($row['turno']);?></span></p>
                        </div>
                    </main>

                    <main class="ord-per">

                        <article class="max2">
                            <h3>Anuncios</h3>

                            <div class="slide-contenedor">                            
                                <?php
                                $miconsulta = "SELECT * FROM anuncios ORDER BY id DESC LIMIT 3 ";

                                if($resultado=mysqli_query($conexion,$miconsulta)){
                                    while($registro = mysqli_fetch_array($resultado)){

                                        echo '
                                        <div class="miSlider fade">
                                        ';

                                        if($registro['imagen']!=""){
                                            echo '<img src="ps-contenido/img/noticias/'.$registro['imagen'].'" alt="" />';
                                        }

                                    echo "</div>";
                                    }
                                }

                                ?>
                                <div class="direcciones">
                                    <a class="atras" onclick="avanzaSlide(-1)">❮</a>
                                    <a class="adelante" onclick="avanzaSlide(1)">❯</a>
                                </div>
                                <div class="barras">
                                    <span class="barra active" onclick="posicionSlide(1)"></span>
                                    <span class="barra" onclick="posicionSlide(2)"></span>
                                    <span class="barra" onclick="posicionSlide(3)"></span>
                                </div>
                            </div>

                        </article>

                        <article>
                            <table>
                                <th class="titulos-th-tr" colspan="2"> Datos escolares </th>
                                <tr>
                                    <td class="titulos-th-tr">Materias</td>
                                    <td class="titulos-th-tr">Profesor</td>
                                </tr>

                            </table>
                            <a href="">
                                <div class="btn1">
                                    <p>Ver datos escolares</p>
                                </div>
                            </a>
                        </article>

                        <article>
                            <div>
                                <h2>Calificaciones</h2>
                            </div>
                            <a href="">
                                <div class="btn1">
                                    <p>Descarga las tuyas aquí</p>
                                </div>
                            </a>
                        </article>

                    </main>

                </section>

                <aside class="gd-asd">

                    <h2>Noticias de tus maestros</h2>

                    <?php
                                $miconsulta1 = "SELECT maestros.nombre, publicaciones.titulo, publicaciones.vista, publicaciones.img FROM maestros
                                INNER JOIN arg_public ON maestros.id = arg_public.id_mst INNER JOIN publicaciones
                                ON arg_public.id_pbc = publicaciones.id ORDER BY publicaciones.id DESC LIMIT 4;";

                                if($resultado=mysqli_query($conexion,$miconsulta1)){
                                    while($registro = mysqli_fetch_array($resultado)){

                                        echo '
                                        <div class="tarjeta">
                                        ';

                                        if($registro['img']!=""){
                                            echo '<div class="trj-img">';
                                            echo '<img src="ps-contenido/img/maestros/'.$registro['img'].'" alt="">';
                                            echo '</div>';
                                        }

                                        echo '
                                        <div class="trj-txt">
                                        <h1>'.$registro['titulo'].'</h1>
                                        <p>'.$registro['vista'].'</p>
                                        <div class="btn-info">
                                            <a href="#"><i class="fas fa-info"></i> Leer más </a>
                                        </div>
                                        ';

                                    echo "</div></div>";
                                    }
                                }

                                ?>

                    <a href="">
                        <div class="mas">
                            <p>Ver más</p>
                        </div>
                    </a>
                </aside>
            </div>
        </div>

        <script src="ps-contenido/js/slider.js"></script>
    </body>
</html>
