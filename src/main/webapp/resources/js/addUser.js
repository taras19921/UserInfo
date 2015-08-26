$(document).ready(function () {
    $('#searchUser').keyup(function (e) {
        var filter = $(searchUser).val();
        if (filter.length > 0) {
            loadTable(filter);
        } else {
            $('tr[id*="tr_"]').remove();
        }
    });
});

function loadTable(filter) {
    var url = "/load" + filter;

    $('#tbody').load(url, function (response, status, xhr) {
        if (status == 'error') {
            var msg = "Sorry, but there was an error: ";
            $("#info").html(msg + xhr.status + " " + xhr.statusText);
        }
    });
}

function clearInputs() {
    $('input[id*="Input"]').each(function () {
        $(this).val('');
    });
}