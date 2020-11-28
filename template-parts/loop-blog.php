<!--Template de la pestaña servicios-->
<!--Template blog que aparece al darle click a la pestaña de SERVICIOS-->
                    

                    <div class="">
                    <?php the_post_thumbnail('mediano'); ?>
                    <?php the_category(); ?>
                        <!--
                        <a href="<?php// the_permalink(); ?>">
                            
                        </a>
                        -->
                        <h3><?php the_title(); ?></h3>
                        <p><?php the_content(); ?></p>

                        <p class="meta">
                            <span> <!--Por:--></span>
                            <a href="
                            <?php 
                                //El nombre del Admin que hizo el post
                                //echo get_author_posts_url(get_the_author_meta('ID'));
                            ?>">
                                <?php //echo get_the_author_meta('display_name') ?>
                            </a>
                        </p>

                        <p class="meta">
                            <span> <!--Fecha:--></span>
                            <?php //the_time(get_option('date_format'));?>
                            <?php //while (have_posts()): the_post();?>
                            <?php //get_template_part('template-parts/loop','blog'); 
                                //comments_template();
                            ?>
            <?php //endwhile; ?>

                        </p>
                    </div>
                