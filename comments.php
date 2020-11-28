<?php 
                //get_post_gallery: Verifique el contenido de una publicación específica para la galería y, si está presente, devuelve el primero
                //obtener la galeria de la pagina actual
                //get_the_ID conseguimos el id de las imagenes
                //$galeria = get_post_gallery( get_the_ID(),false );
                //explode: quita el caracter que le digas y lo guarda en un array
                //$galeria_imagenes_ID = explode(',',$galeria['ids']);
            ?>
<!--
            <ul class="galeria-imagenes">
                <?php/*
                    $i = 1;
                    foreach ($galeria_imagenes_ID as $id):
                        //Le indicas que cuando el id pase por los ids 4 y 6 cambie el tamaño de la imagen
                        $size = ($i == 4 || $i == 6) ? 'portrait' : 'square';
                        //Recupera una imagen para representar un archivo adjunto, lo pones el tamaño square que pusiste en el archivo functions.php y le pones [0] porque te devuelve un array con el url de la imagen, su tamaño y un valor booleano por si encontro la imagen
                        $imagenThumb = wp_get_attachment_image_src($id,$size)[0];
                        //Genero una imagen grande
                        $imagen = wp_get_attachment_image_src($id,'full')[0];
                */
                ?>
                    <li>
                        <a href="<?php //echo $imagen; ?>" data-lightbox="galeria">
                            <img src="<?php// echo $imagenThumb;?>" alt="Imagen">
                        </a> 
                    </li>
                <?php //$i++; endforeach; ?>
            </ul>
-->

<div class="contenedor comentarios">
    <?php
        $args = array(
            'class_submit' => 'boton boton-primario'
        );
        comment_form($args);
    ?>
    <h3 class="text-center">Comentarios</h3>
    <ul class="lista-comentarios">
    <?php
        $args = array(
            'post_id' => $post->ID, //trae los comentarios de ese post en específico, el $post->ID esta vivo siempre y cuando lo uses dentro del while del archivo donde pusiste comments_template(); que es single.php
            'status' => 'approve' //que muestre el status de los comentarios, solo quiero comentarios aprobados
        );
        //La función que nos va traer los comentarios de nuestra base de datos
        $comentarios = get_comments($args);
    
        //La configuración de como se van a mostrar los comentarios
        $comentarios = get_comments($args);
        $args2 = array(
            'per_page' => 20, //número de comentarios que quieres que se muestren
            'reverse_top_level' => false // Te muestra el último comentario escrito
        );
        wp_list_comments($args2);
    ?>
    </ul>
</div>

