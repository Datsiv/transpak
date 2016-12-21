$(document).ready(function () {
    $('#products').on('click', function () {
        $('#product_1').toggleClass('fa-angle-up');
        $('#product_1').toggleClass('fa-angle-down');
        $('#products_id').slideToggle("fast");
    });
    $('#products_id_md').on('click', function () {
        console.log('awdwd');
        $('#products_md').slideToggle("fast");
    });
    /*	$("#contact").click(function() {
     $("#myModal").modal('show');
     });
     */
    $("#phone_id").click(function() {
        $('#id_phone').slideToggle("fast");
    });


    function checkForm(id) {
        if(typeof id != 'undefined'){
            if($('#'+id).val() == ''){
                return 0;
            }
        }
        switch (id) {
            case 'name':
                if (!($('#' + id).val().match(/^[a-zA-Zа-яА-Я]+$/)) || ($('#name').val().length < 3)) {
                    $('#errorMasege > .' + id).text('Некоректно заполнено Имя пользователя');
                    $('#' + id).css('border', '1px solid red');
                    $('#errorMasege > .' + id).show();
                } else {
                    $('#errorMasege > .' + id).text('');
                    $('#' + id).css('border', '1px solid green');
                    $('#errorMasege > .' + id).hide();
                }
                break;
            case 'telefon':
                if (!($('#' + id).val().match(/^[0-9\-]|[\+0-9]|[0-9\s]|[0-9()]*$/))) {
                    $('#errorMasege > .' + id).text('Некоректно заполнено telefon');
                    $('#' + id).css('border', '1px solid red');
                    $('#errorMasege > .' + id).show();
                } else {
                    $('#errorMasege > .' + id).text('');
                    $('#' + id).css('border', '1px solid green');
                    $('#errorMasege > .' + id).hide();
                }
                break;
            case 'message':
                if (!($('#' + id).val().length >= 10)) {
                    $('#errorMasege > .' + id).text('Минимальная длина сообщения десеть знаков');
                    $('#' + id).css('border', '1px solid red')
                    $('#errorMasege > .' + id).show();
                } else {
                    $('#errorMasege > .' + id).text('');
                    $('#' + id).css('border', '1px solid green');
                    $('#errorMasege > .' + id).hide();
                }
                break;
            default:
                var errorCount = 0;
                if (!($('#name').val().match(/^[a-zA-Zа-яА-Я]+$/))) {
                    $('#name').css('border', '1px solid red');
                    errorCount++;
                    $('#errorMasege > .name').show();
                } else {
                    $('#errorMasege > .name').text('');
                    $('#name').css('border', '1px solid green');
                    $('#errorMasege > .name').hide();
                }
                if (!($('#telefon').val().match(/^[0-9\-]|[\+0-9]|[0-9\s]|[0-9()]*$/))) {
                    $('#telefon').css('border', '1px solid red');
                    errorCount++;
                    $('#errorMasege > .telefon').show();
                } else {
                    $('#errorMasege > .telefon').text('');
                    $('#telefon').css('border', '1px solid green');
                    $('#errorMasege > .telefon').hide();
                }
                if (!($('#message').val().length >= 10)) {
                    $('#message').css('border', '1px solid red');
                    errorCount++;
                    $('#errorMasege > .message').show();
                } else {
                    $('#errorMasege > .message').text('');
                    $('#message').css('border', '1px solid green');
                    $('#errorMasege > .message').hide();
                }
                if (errorCount == 0) {
                    return true;
                } else {
                    return false;
                }
                break;
        }
    }

    $('.contactItem').on('blur', function () {
        console.log($(this).attr('id'));
        checkForm($(this).attr('id'));
    });

    $('#sendMessage').on('click', function (even) {
        even.preventDefault();
        if (checkForm()) {
            var res = $('#contactForm').serializeArray();
            console.log(res);
            var arr = {};
            $.each(res, function (result) {
                var $index = res[result].name;
                arr[$index] = res[result].value;
            });
            $('#name').val('');
            $('#telefon').val('');
            $('#message').val('');
            swal("Сообщение отправлено", "", "success");
            $('#contactForm_en').removeClass('in');
            $('.modal-backdrop').removeClass('in');
            $.ajax({
                url: 'index.php?route=common/header/contactForm',
                type: 'post',
                dataType: 'json',
                data: arr,
                success: function (data) {

                }
            });
        } else {
            console.log('Incorrectly completed forms');
        }
    });
});