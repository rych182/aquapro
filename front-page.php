<?php get_header('front'); ?>

<section class="bienvenida text-center seccion">
    <h2 class="texto-primario"> <?php the_field('encabezado_bienvenida'); ?> </h2>
    <p><?php the_field('texto_bienvenida'); ?></p>
</section>


<div class="seccion-areas">
    <ul class="contenedor-areas">
        <li class="area">
            <?php 
                $area1 = get_field('area_1');
                //Extrayendo la imagen usando el name del subfield que esta en "custom fields" y diciendole el tamaño
                $imagen = wp_get_attachment_image_src($area1['area_imagen'], 'mediano')[0];
                //var_dump($area1);
            ?>
            <img src="<?php echo esc_attr($imagen); ?>" alt="">
            <p><?php echo esc_html($area1['area_texto']); ?></p>
        </li>

        <li class="area">
            <?php 
                $area2 = get_field('area_2');
                //Extrayendo la imagen usando el name del subfield que esta en "custom fields" y diciendole el tamaño
                $imagen = wp_get_attachment_image_src($area2['area_imagen'], 'mediano')[0];
                //var_dump($area1);
            ?>
            <img src="<?php echo esc_attr($imagen); ?>" alt="">
            <p><?php echo esc_html($area2['area_texto']); ?></p>
        </li>

        <li class="area">
            <?php 
                $area3 = get_field('area_3');
                //Extrayendo la imagen usando el name del subfield que esta en "custom fields" y diciendole el tamaño
                $imagen = wp_get_attachment_image_src($area3['area_imagen'], 'mediano')[0];
                //var_dump($area1);
            ?>
            <img src="<?php echo esc_attr($imagen); ?>" alt="">
            <p><?php echo esc_html($area3['area_texto']); ?></p>
        </li>

        <li class="area">
            <?php 
                $area4 = get_field('area_4');
                //Extrayendo la imagen usando el name del subfield que esta en "custom fields" y diciendole el tamaño
                $imagen = wp_get_attachment_image_src($area4['area_imagen'], 'mediano')[0];
                //var_dump($area1);
            ?>
            <img src="<?php echo esc_attr($imagen); ?>" alt="">
            <p><?php echo esc_html($area4['area_texto']);?></p>
            
        </li>
    </ul>
</div>

<section class="testimoniales">
    <h2 class="text-center texto-blanco">Testimoniales</h2>
    <p class="text-center acomodar-parrafo">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
</section>




<?php get_footer(); ?>