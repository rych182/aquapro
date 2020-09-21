<?php

function aquapro_menus(){
    register_nav_menus(array(
        'menu-principal' => __('Menu Principal','AquaPro')
        ));
    }
add_action('init','aquapro_menus');

//Scripts y styles
//Nos permite cargar hojas de estilo y librerias de Javascript, incluso Angular, react y vue
function gisea_prototype_scripts_style(){

    //El normalize se carga antes del style porque resetea los estilos
    wp_enqueue_style('normalize',get_template_directory_uri() . '/css/normalize.css',array(),'8.0.1');
    wp_enqueue_style('slicknav',get_template_directory_uri() . '/css/slicknav.css',array(),'1.0.0');

    wp_enqueue_style('googleFont','https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Raleway:wght@400;700;900&family=Staatliches&display=swap"',array(),'1.0.0');
    
    # HOJA DE ESTILOS PRINCIPAL
    # el array() vacio es donde van las dependencias y se deja vacio cuando no las haya
    # Es importante poner una version ya que si instalas un plugin de cache y haces modificaciones, con que le pongas 1.0.1, te mostrara las modificaciones
    wp_enqueue_style('style',get_stylesheet_uri(),array('normalize','googleFont'),'1.0.0');


    //Así se cargan archivos JavaScript
    wp_enqueue_script('queryslicknav',get_template_directory_uri() . '/js/jquery.slicknav.min.js',array('jquery'),'1.0.0',true);
    wp_enqueue_script('scripts',get_template_directory_uri() . '/js/scripts.js',array('jquery','queryslicknav'),'1.0.0',true);
}
//Este hook quiere decir que va a cargar hojas de estilo en la parte frontal de la web
add_action('wp_enqueue_scripts','gisea_prototype_scripts_style');
?>