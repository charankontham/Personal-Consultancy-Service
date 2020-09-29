/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function logout()
{
    alert("logging out");
}
function Getstarted()
{
    $("#getstarted").hide();
    $("#download").hide();
    $("#website_layout").hide();
    $("#final").hide();
    $("#structure").show();
    $("#chat").hide();
}
function downloadapp()
{
    $("#final").hide();
    $("#home").hide();
    $("#getstarted").show();
    $("#download").show();
    $("#service").hide();
    $("#booking").hide();
    $("#repair").hide();
    $("#dailyneeds").hide();
    $("#renovation").hide();
    $("#personalneeds").hide();
    $("#cmm").hide();
    $("#structure").hide();
    $("#chat").hide();

}
function service()
{
    $("#download").hide();
    $("#home").hide();
    $("#service").show();
    $("#repair").hide();
    $("#booking").hide();
    $("#getstarted").hide();
    $("#dailyneeds").hide();
    $("#renovation").hide();
    $("#personalneeds").hide();
    $("#website_layout").hide();
    $("#final").hide();
    $("#cmm").hide();
    $("#structure").hide();
    $("#chat").hide();
}
function home()
{
    $("#final").hide();
    $("#download").hide();
    $("#service").hide();
    $("#booking").hide();
    $("#getstarted").show();
    $("#washing_machine").hide();
    $("#water_purifier").hide();
    $("#website_layout").hide();
    $("#service").hide();
    $("#repair").hide();
    $("#cmm").hide();
    $("#structure").hide();
    $("#chat").hide();
}
function booking()
{
    $("#getstarted").hide();
    $("#final").show();
    $("#booking").show();
    $("#download").hide();
    $("#home").hide();
    $("#repair").hide();
    $("#service").hide();
    $("#dailyneeds").hide();
    $("#personalneeds").hide();
    $("#renovation").hide();
    $("#website_layout").hide();
    $("#final").show();
    $("#cmm").hide();
    $("#structure").hide();
    $("#chat").hide();
//                document.userBookingDetailsForm.submit();
}
function learn()
{
    $("#booking").hide();
    $("#download").hide();
    $("#home").hide();
    $("#repair").hide();
    $("#service").hide();
    $("#dailyneeds").hide();
    $("#personalneeds").hide();
    $("#renovation").hide();
    $("#getstarted").hide();
    $("#website_layout").show();
    $("#cmm").hide();
    $("#final").hide();
    $("#structure").hide();
    $("#chat").hide();
}
function commonFunctionForAllServices(service, id1, id2, id3, id4) {
//    alert("hi")
    $(".issueType").text('');
    $(".serviceType").text(service);
    $("#serviceType").val(service);
    $("#service").hide();
    $("#download").hide();
    $("#booking").hide();
    $("#home").hide();
    $("#repair").show();
    $("#dailyneeds").hide();
    $("#renovation").hide();
    $("#personalneeds").hide();
    $("#website_layout").hide();
    $("#final").hide();
    //
    $("#" + id1).show();
    $("#" + id2).hide();
    $("#" + id3).hide();
    $("#" + id4).hide();
}
function Location()
{
    $("#home").hide();
    $("#location").show();
    $("#repair").hide();
}
function District(location)
{
//   alert(location)
//    $("#service").hide();
//    $("#download").hide();
//    $("#booking").hide();
//    $("#home").hide();
//    $("#repair").hide();
//    $("#dailyneeds").hide();
//    $("#renovation").hide();
//    $("#personalneeds").hide();
//    $("#district").show();
//    $.ajax({
//        type: 'GET',
//        url: 'check-worker-avail',
////        data:{
////          locationId :  location
////        },
//        success: function (result) {
//            var availStatus = $.parseJSON(result);
//            if (availStatus.locationId == 'Yes') {
//                $('#workersAvailTextId').text("Workers are Available in your area");
//                if (i < txt.length)
//                {
//                    document.getElementById("demo").innerHTML += txt.charAt(i);
//                    i++;
//                    setTimeout(District, speed);
//                }
//            } else {
//                $('#workersAvailTextId1').text("Sorry!!Workers are not available in your area");
//                $('#workersAvailTextId').hide();
//            }
//        }
//    });
}
function commonFunctionForAllIssues(issue) {
//    alert("sdfsd")
    $(".issueType").text(issue);
    $("#issueType").val(issue);
    //    
    $(".serviceType").hide();
    $("#serviceType").hide();
    //
    $("#cmm").show();
    $("#location").hide();
    $("#service").hide();
    $("#download").hide();
    $("#booking").hide();
    $("#home").hide();
    $("#repair").hide();
    $("#dailyneeds").hide();
    $("#renovation").hide();
    $("#personalneeds").hide();
    $("#details").hide();
    $("#website_layout").hide();
    $("#district").hide();
}
function Date1()
{
    $("#service").hide();
    $("#download").hide();
    $("#booking").hide();
    $("#home").hide();
    $("#repair").hide();
    $("#dailyneeds").hide();
    $("#renovation").hide();
    $("#personalneeds").hide();
    $("#details").show();
}
function confirm()
{
    document.getElementById("overlay1").style.display = "block";
}
function make_payment()
{
    document.getElementById("overlay1").style.display = "none";
    $("#makepayment").show();
    $("#atm").hide();
    $("#payment").hide();
}
$(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip();
});
function feedback()
{
    $("#chat").show();
    $("#structure").hide();
    $("#final").hide();
    $("#service").hide();
    $("#download").hide();
    $("#booking").hide();
    $("#home").hide();
    $("#cmm").hide();
    $("#website_layout").hide();
}
function msgsend()
{
//                document.userBookingDetailsForm.submit();
    document.feedbackForm.submit();
//                alert("Your message has been forwarded");
    $("#chat").hide();
    $("#getstarted").show();
    $("#home").show();
}
function make_payment()
{
    alert("payment is successfully Completed");
    $("#makepayment").show();
    $("#atm").hide();
    $("#payment").hide();
}
function submitted()
{
    document.serviceDetailsForm.submit();
    $("#final").show();
    $("#service").hide();
    $("#download").hide();
    $("#booking").hide();
    $("#home").hide();
    $("#repair").hide();
    $("#dailyneeds").hide();
    $("#renovation").hide();
    $("#personalneeds").hide();
    $("#details").hide();
    $("#cmm").hide();
//                $.ajax({
//                    url: "saveUserService",
//                    type: "POST",
//                    processData: false,
//                    contentType: false,
//                    cache: false,
//                    timeout: 600000,
////                        data:{ "processData=" + processData,
//                    data : {
//                        paymentMode: $("#paymentMode option:selected").text(),
//                        pinCode: $("#t1").val(),
//                        hNo: $("#t2").val(),
//                        streetNo: $("#t3").val(),
//                        serviceMessage: $("#t5").val(),
//                        serviceDate: $("#serviceDate").val(),
//                        userId: $('#userId').val()
//                    },
////                        cache: false,
//                    success: function (data) {
////                        alert(data.status)
////                        alert(data.status)
////                           
//                    }
//                });
//                alert("Your ticket is confirmed");
} 