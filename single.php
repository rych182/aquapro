<!--El template de los post-->
<!--AQUÍ VA EL comments_template(); que detecta el comments.php
    que por cierto, también modifica las entradas del blog
-->

<?php get_header(); ?>

<?php while ( have_posts()): the_post(); ?>
<h1 class="text-center"> <?php the_title(); ?> </h1>
    <?php //the_content(); 
    //comente the_content porque repetía la galeria en la sección que le corresponde al blog
    ?>
    <?php comments_template();?>
<?php endwhile; ?>

<?php get_footer(); ?>