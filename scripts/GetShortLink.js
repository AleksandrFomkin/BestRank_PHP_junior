$(document).ready(function () {
    $('#ajax-label').hide();

    $("#short-link-form").submit(function (e) {
        e.preventDefault();
        var link = $("#long-link-text").val();
        $.ajax({
            url: '../controllers/ajax.php',
            data: {
                action: 'saveUrl',
                param: link
            },
            type: 'post',
            success: function (output) {
                $('#ajax-label').show();
                $('#ajax-result').text(output);
            }
        });
    });
});