
function loadAndPrintDocumentAsync() {
   // return new Promise(function (resolve, reject) {
        var varcompanyxid = localStorage.getItem("forusername");
        var varinvoiceno = localStorage.getItem("invoiceno_postsales");



        

        $('#total').val("Total: 0.00 ");
        $.ajax({
            url: `https://www.seelagos.com/print_new4.ashx?term1=${varcompanyxid}&term2=${varinvoiceno}`,
            method: 'post',
            dataType: 'json',
            success: function (data) {
                var employeeTable = $('#productTable tbody');
               // employeeTable.empty();
                $(data).each(function (index, empp) {
                    employeeTable.append(
                        `<tr><td>${empp.unitqty}</td><td>${empp.description2}</td><td>${empp.unittotal}</td></tr>`
                    );
                    $('#total').val(`Total: ${empp.totalpayable}`);
                });
                resolve(data);
            },
            error: function (xhr, status, error) {
                // Log the error details to the console for debugging
                console.error(`Error: ${status} - ${error}`);
                reject(error);
            }
        });
    //});
}





function message1() {
   
    alert(localStorage.getItem("forusername"));
    alert(localStorage.getItem("invoiceno_postsales"));

    };





$(document).ready(async function () {
    try {
        alert(localStorage.getItem("forusername"));
        alert(localStorage.getItem("invoiceno_postsales"));
        loadAndPrintDocumentAsync();
       //window.print();
       
    } catch (err) {
        alert(err);
    }


    $('#Button3').click(function () {
        alert(localStorage.getItem("forusername"));
        alert(localStorage.getItem("invoiceno_postsales"));
    });
});




