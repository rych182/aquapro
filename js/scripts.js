/*puse .site-header junto con .menu-principal .menu , para que así el menú no se repita en el footer*/
jQuery(document).ready(function($) {
    $('.site-header .menu-principal .menu').slicknav({
        label: "MENU", //texto del menú
        appendTo: ".site-header"
    });
    /*
        var map = L.map('mapa').setView([51.505, -0.09], 13);

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map);

        L.marker([51.5, -0.09]).addTo(map)
            .bindPopup('A pretty CSS3 popup.<br> Easily customizable.')
            .openPopup();
        */

});