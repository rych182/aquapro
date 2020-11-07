<?php while ( have_posts() ): the_post(); ?>
            <h1 class="text-center texto-primario"> 
                <?php
                    // the_title(); Los titulos 
                ?> 
            </h1>
            <!--el array hace que le des una clase específica a esa imagen destacada-->
            <?php the_post_thumbnail('blog',array('class' => ('imagen-destacada'))); ?>
            <?php 
            //Con esta función aparece elformulario de la pestaña contacto, 
            the_content(); 
            ?>  


            <section class="bienvenida text-center seccion">
                <h2 class="texto-primario"> <?php the_field('encabezado_bienvenida'); ?> </h2>
                <p><?php the_field('texto_bienvenida'); ?></p>
                <h2 class="texto-primario"> <?php the_field('encabezado_bienvenida_2'); ?> </h2>
                <p><?php the_field('texto_bienvenida_2'); ?></p>
                <h2 class="texto-primario"> <?php the_field('encabezado_bienvenida_3'); ?> </h2>
                <p><?php the_field('texto_bienvenida_3'); ?></p>
            </section>

               
            
            <?php endwhile; ?>