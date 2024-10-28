$(function() {

$("#cityname").blur(
		function() {
			$("#cityname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#cityname").after("<span id='cityname_msg' style='color: red'>城市名称不能为空</span>");
			}
	});







$('#sub').click(function(){
var cityname = $("#cityname").val();
$("#cityname_msg").empty();
if (cityname == "" || cityname == null) {
	$("#cityname").after("<span id='cityname_msg' style='color: red'>城市名称不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#cityname_msg").empty();
});


});
