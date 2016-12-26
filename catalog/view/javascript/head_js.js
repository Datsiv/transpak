        function fff(){
            var doc = document;
            doc.getElementById("ttt").style.display = "block";
            doc.getElementById("men1").style.display = "block";
            doc.getElementById("men").style.display = "none";
            doc.getElementById("logo12").style.display = "none";
        }

        function www(){
            var doc = document;
            doc.getElementById("ttt").style.display = "none";
            doc.getElementById("men").style.display = "block";
            doc.getElementById("men1").style.display = "none";
            doc.getElementById("logo12").style.display = "block";
        }
$(document).ready(function(){


    $(".dropdown").on("hide.bs.dropdown", function(event){
        $('.dropMenuClick').find('.menu_arrow img').attr('src', '/admin/view/image/onblack.png')
        $('.dropMenuClick').css('color', 'black');


        $('.dropMenuClickmob').css('color', 'white');
        $('.menu_arrowmob img').attr('src', '/admin/view/image/on.png')
    });

    $(".dropdown").on("show.bs.dropdown", function(event){
        $('.dropMenuClick').find('.menu_arrow img').attr('src', '/admin/view/image/up.png')
        $('.dropMenuClick').css('color', '#ffdc00');


        $('.dropMenuClickmob').css('color', 'yellow');
        $('.menu_arrowmob img').attr('src', '/admin/view/image/up.png')
    });

})

