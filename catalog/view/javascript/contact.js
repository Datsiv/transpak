$(document).ready(function () {

    ymaps.ready(init);
    var myMap,
        myPlacemark;

    function init(){
        myMap = new ymaps.Map("map", {
            center: [55.702531, 37.928893],
            zoom: 17
        });

        myPlacemark = new ymaps.Placemark([55.702531, 37.928893], {
        });
    }
});