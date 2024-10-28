$(function() {

$("#usersid").blur(
		function() {
			$("#usersid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#usersid").after("<span id='usersid_msg' style='color: red'>用户不能为空</span>");
			}
	});

$("#filmid").blur(
		function() {
			$("#filmid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#filmid").after("<span id='filmid_msg' style='color: red'>菜品不能为空</span>");
			}
	});

$("#num").blur(
		function() {
			$("#num_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#num").after("<span id='num_msg' style='color: red'>数量不能为空</span>");
			}
	});

$("#price").blur(
		function() {
			$("#price_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#price").after("<span id='price_msg' style='color: red'>单价不能为空</span>");
			}
	});







$('#sub').click(function(){
var usersid = $("#usersid").val();
var filmid = $("#filmid").val();
var num = $("#num").val();
var price = $("#price").val();
$("#usersid_msg").empty();
$("#filmid_msg").empty();
$("#num_msg").empty();
$("#price_msg").empty();
if (usersid == "" || usersid == null) {
	$("#usersid").after("<span id='usersid_msg' style='color: red'>用户不能为空</span>");
	return false;
}
if (filmid == "" || filmid == null) {
	$("#filmid").after("<span id='filmid_msg' style='color: red'>菜品不能为空</span>");
	return false;
}
if (num == "" || num == null) {
	$("#num").after("<span id='num_msg' style='color: red'>数量不能为空</span>");
	return false;
}
if (price == "" || price == null) {
	$("#price").after("<span id='price_msg' style='color: red'>单价不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#usersid_msg").empty();
$("#filmid_msg").empty();
$("#num_msg").empty();
$("#price_msg").empty();
});


});
