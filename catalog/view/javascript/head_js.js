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
        $(document).on('click', '.dropMenuClickmob', function(){
            if($(this).find('.menu_arrowmob img').attr('src') == '/admin/view/image/on.png'){
                $(this).find('.menu_arrowmob img').attr('src', '/admin/view/image/up.png');
                $(this).css('color', '#ffdc00');
            }else{
                $(this).find('.menu_arrowmob img').attr('src', '/admin/view/image/on.png')
                $(this).css('color', 'white');
            }
        })
    $(document).on('click', '.dropMenuClick', function(){
        if($(this).find('.menu_arrow img').attr('src') == '/admin/view/image/onblack.png'){
            $(this).find('.menu_arrow img').attr('src', '/admin/view/image/up.png');
            $(this).css('color', '#ffdc00');
        }else{
            $(this).find('.menu_arrow img').attr('src', '/admin/view/image/onblack.png')
            $(this).css('color', 'black');
        }
    })

})

