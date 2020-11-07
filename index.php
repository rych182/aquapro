<?php get_header(); ?>
<h1>Aquí van los comments y post</h1>

<main class="pagina seccion no-sidebars contenedor">
        <ul class="listado-blog">
        <!--Con este loop utilizamos el esqueleto de loop-blog.php-->
            <?php while (have_posts()): the_post();?>
            <?php //get_template_part('template-parts/loop','blog'); 
                //NO FUNCIONO get_template_part('single');
                comments_template();
            ?>
            <?php endwhile; ?>
        </ul>
    </main>

<?php get_footer(); ?>