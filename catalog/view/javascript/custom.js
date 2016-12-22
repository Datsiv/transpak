function zakazData(name,price){
    var z = document.getElementById('zakaz');
    var p = document.getElementById('zakaz-price');
    z.value = name;
    p.textContent = price;
}

$('document').ready(function() {
    $('#contact-form').on('submit', function(event) {
        event.preventDefault();

        var action = $(this).attr('action');
        var values = $(this).serialize();

        $.ajax({
            type: "POST",
            data: values,
            url: 'contact.php',
            dataType: "json",
            success: function(data) {
                $('#contact-form').find('.form-group').removeClass('has-error').find('.help-block').html('');


                if (data.errors.name) {
                    $('#name').closest('.form-group').addClass('has-error').find('.help-block').html(data.errors.name);
                }

                if (data.errors.address) {
                    $('#address').closest('.form-group').addClass('has-error').find('.help-block').html(data.errors.address);
                }


                if (data.errors.email) {
                    $('#email').closest('.form-group').addClass('has-error').find('.help-block').html(data.errors.email);
                }


                if (data.errors.phone) {
                    $('#phone').closest('.form-group').addClass('has-error').find('.help-block').html(data.errors.phone);
                }


                if (data.errors.zakaz) {
                    $('#zakaz').closest('.form-group').addClass('has-error').find('.help-block').html(data.errors.zakaz);
                }


                if (data.success) {
                    $('#contact-form').hide();
                    $('#success-message').show().html(data.message)
                }
            },
            error: function() {
                alert("Ошибка при отправке сообщения. Пожалуйста, обновите и попробуйте еще раз.");
            }
        });
    });
});