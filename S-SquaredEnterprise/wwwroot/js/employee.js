$(document).ready(function () {
    $("#selectManager").change(function () {
        $("#filterForm").submit();
    });

    $('.selectpicker').selectpicker();
});