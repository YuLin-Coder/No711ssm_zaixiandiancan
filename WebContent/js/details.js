$(function() {

$("#ordercode").blur(
		function() {
			$("#ordercode_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#ordercode").after("<span id='ordercode_msg' style='color: red'>订单号不能为空</span>");
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

$("#cityid").blur(
		function() {
			$("#cityid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#cityid").after("<span id='cityid_msg' style='color: red'>城市不能为空</span>");
			}
	});

$("#cinemaid").blur(
		function() {
			$("#cinemaid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#cinemaid").after("<span id='cinemaid_msg' style='color: red'>连锁店不能为空</span>");
			}
	});

$("#viewdate").blur(
		function() {
			$("#viewdate_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#viewdate").after("<span id='viewdate_msg' style='color: red'>观看日期不能为空</span>");
			}
	});







$('#sub').click(function(){
var ordercode = $("#ordercode").val();
var filmid = $("#filmid").val();
var num = $("#num").val();
var price = $("#price").val();
var cityid = $("#cityid").val();
var cinemaid = $("#cinemaid").val();
var viewdate = $("#viewdate").val();
$("#ordercode_msg").empty();
$("#filmid_msg").empty();
$("#num_msg").empty();
$("#price_msg").empty();
$("#cityid_msg").empty();
$("#cinemaid_msg").empty();
$("#viewdate_msg").empty();
if (ordercode == "" || ordercode == null) {
	$("#ordercode").after("<span id='ordercode_msg' style='color: red'>订单号不能为空</span>");
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
if (cityid == "" || cityid == null) {
	$("#cityid").after("<span id='cityid_msg' style='color: red'>城市不能为空</span>");
	return false;
}
if (cinemaid == "" || cinemaid == null) {
	$("#cinemaid").after("<span id='cinemaid_msg' style='color: red'>连锁店不能为空</span>");
	return false;
}
if (viewdate == "" || viewdate == null) {
	$("#viewdate").after("<span id='viewdate_msg' style='color: red'>观看日期不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#ordercode_msg").empty();
$("#filmid_msg").empty();
$("#num_msg").empty();
$("#price_msg").empty();
$("#cityid_msg").empty();
$("#cinemaid_msg").empty();
$("#viewdate_msg").empty();
});


});
