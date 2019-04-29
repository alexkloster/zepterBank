$('#depositTypeId').on('change', function () {
    var depositType = document.getElementById("depositTypeId");

    var depositId = depositType.options[depositType.selectedIndex].value;
    $.ajax({

        url: "/getDepositType/" + depositId,
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
            var startDate = new Date(deposit.startDate).format("dd-mm-yyyy");
            $("#depositClient").text(deposit.client.name);
            $("#depositUser").text(deposit.user.name);
            $("#depositStart").text(startDate);
            $("#depositEnd").text(deposit.endDate.format("dd-mm-yyyy"));
            $("#depositCurSum").text(deposit.sum);

            $("#depositCurrentProfit").text(deposit.endDate.format("dd-mm-yyyy"));
            $("#depositProfit").text(deposit.endDate.format("dd-mm-yyyy"));


        }
    });

});