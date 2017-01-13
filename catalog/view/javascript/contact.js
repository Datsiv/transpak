$(document).ready(function () {

    ymaps.ready(init);
    var myMap,
        myPlacemark;

    function init(){
        myMap = new ymaps.Map("map", {
            center: [55.626609, 37.441071],
            zoom: 17
        });

        myPlacemark = new ymaps.Placemark([55.626609, 37.441071], {
            hintContent: '108811, Россия, Москва, Киевское ш., 1-й км от МКАД, Бизнес Парк «Румянцево», блок «Б», подъезд 6, этаж 7, офис 701Б',
        });
        myMap.geoObjects.add(myPlacemark);
    }
});
