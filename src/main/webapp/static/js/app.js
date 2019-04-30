$('#paymentTypeSelect').on('change', function () {

    var combo = document.getElementById("paymentTypeSelect");

    $("#paymentType").val(combo.options[combo.selectedIndex].value);

});


$('#creditTypeSelect').on('change', function () {

    var combo = document.getElementById("creditTypeSelect");


    var type = combo.options[combo.selectedIndex].value;

    $("#creditType").val(type);

    $.ajax({

        url: "/getCreditType/" + type,
        type: "GET",

        contentType: 'application/json; charset=utf-8',
        success: function (resultData) {
            $("#creditSumm").attr({
                "min": resultData.minSum,
                "data-suffix": resultData.currency.currencyName
            });

            $("#creditTerm").attr({
                "min": resultData.term,
                "step": resultData.term
            });
        },
        error: function (jqXHR, textStatus, errorThrown) {
        },

        timeout: 120000
    });

});

$('#depositTypeSelect').on('change', function () {

    var combo = document.getElementById("depositTypeSelect");

    var type = combo.options[combo.selectedIndex].value;

    $("#depositType").val(type);
    $.ajax({

        url: "/getDepositType/" + type,
        type: "GET",

        contentType: 'application/json; charset=utf-8',
        success: function(resultData) {
            $("#depositSumm").attr({
                "min": resultData.minSum,
                "data-suffix": resultData.currency.currencyName
            });

            $("#depositTerm").attr({
                "min": resultData.term,
                "step": resultData.term
            });
        },
        error : function(jqXHR, textStatus, errorThrown) {
        },

        timeout: 120000});

});

$('[data-toggle="modal"]').on('click', function (e) {
    var $target = $(e.target);
    var depositId = $target.data("val");

    $.ajax({
        url: "/getDepositInfo/" + depositId,
        type: "GET",

        contentType: 'application/json; charset=utf-8',
        success: function(deposit) {
            $("#depositDescription").text(deposit.depositType.description);
            $("#depositCurrency").text(deposit.depositType.currency.currencyName);
            $("#depositPercentage").text(deposit.depositType.percentage);
            $("#depositTerm").text(deposit.depositType.term);
            $("#depositSum").text(deposit.depositType.minSum);
            $("#deposiеCapitalization").text(deposit.depositType.capitalization);
            var momentDate = moment(deposit.startDate, 'YYYY-MM-DD HH:mm:ss.S');
            var startDate = momentDate.toDate();

            momentDate = moment(deposit.endDate, 'YYYY-MM-DD HH:mm:ss.S');
            var endDate = momentDate.toDate();

            $("#depositClient").text(deposit.client.name);
            $("#depositUser").text(deposit.user.name);
            $("#depositStart").text(formatDate(startDate));
            $("#depositEnd").text(formatDate(endDate));
            $("#depositCurSum").text(deposit.sum);
        }
    });
    $.ajax({
        url: "/calculateCurrentProfit/" + depositId,
        type: "GET",

        contentType: 'application/json; charset=utf-8',
        success: function(profit) {
            $("#depositCurrentProfit").text(profit);
        }
    });

    $.ajax({
        url: "/calculateProfit/" + depositId,
        type: "GET",

        contentType: 'application/json; charset=utf-8',
        success: function(profit) {
            $("#depositProfit").text(profit);
        }
    });

});

$(document).ready(function ($) {
    $(".phone").inputmask({"mask": "+999 (99) 999-99-99"});
    $(".passportNumber").inputmask({"mask": "9999999"});
    $(".passportSeries").inputmask({"mask":"AA"});
    $(".paymentNumber").inputmask({"mask":"999999"});
    $('.date').inputmask('9999-99-99', {placeholder: "yyyy-mm-dd"});
});


function formatDate(date) {
    var monthNames = [
        "янв", "фев", "мар",
        "aпр", "май", "июн", "июл",
        "авг", "сен", "окт",
        "ноя", "дек"
    ];

    var day = date.getDate();
    var monthIndex = date.getMonth();
    var year = date.getFullYear();

    return day + ' ' + monthNames[monthIndex] + ' ' + year;
}


function formatDateFromPattern(date, pattern) {

    var momentDate = moment(date, pattern);
    var d = momentDate.toDate();


    var monthNames = [
        "янв", "фев", "мар",
        "aпр", "май", "июн", "июл",
        "авг", "сен", "окт",
        "ноя", "дек"
    ];

    var day = d.getDate();
    var monthIndex = d.getMonth();
    var year = d.getFullYear();

    return day + ' ' + monthNames[monthIndex] + ' ' + year;


}