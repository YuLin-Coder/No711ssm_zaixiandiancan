$(function() {

$("#filmname").blur(
		function() {
			$("#filmname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#filmname").after("<span id='filmname_msg' style='color: red'>菜品名称不能为空</span>");
			}
	});

$("#image").blur(
		function() {
			$("#image_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#image").after("<span id='image_msg' style='color: red'>图片不能为空</span>");
			}
	});

$("#cateid").blur(
		function() {
			$("#cateid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#cateid").after("<span id='cateid_msg' style='color: red'>菜品类型不能为空</span>");
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

$("#thestart").blur(
		function() {
			$("#thestart_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#thestart").after("<span id='thestart_msg' style='color: red'>开始日期不能为空</span>");
			}
	});

$("#theend").blur(
		function() {
			$("#theend_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#theend").after("<span id='theend_msg' style='color: red'>结束日期不能为空</span>");
			}
	});

$("#contents").blur(
		function() {
			$("#contents_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contents").after("<span id='contents_msg' style='color: red'>菜品介绍不能为空</span>");
			}
	});







$('#sub').click(function(){
var filmname = $("#filmname").val();
var image = $("#image").val();
var cateid = $("#cateid").val();
var price = $("#price").val();
var thestart = $("#thestart").val();
var theend = $("#theend").val();
var contents = $("#contents").val();
$("#filmname_msg").empty();
$("#image_msg").empty();
$("#cateid_msg").empty();
$("#price_msg").empty();
$("#thestart_msg").empty();
$("#theend_msg").empty();
$("#contents_msg").empty();
if (filmname == "" || filmname == null) {
	$("#filmname").after("<span id='filmname_msg' style='color: red'>菜品名称不能为空</span>");
	return false;
}
if (image == "" || image == null) {
	$("#image").after("<span id='image_msg' style='color: red'>图片不能为空</span>");
	return false;
}
if (cateid == "" || cateid == null) {
	$("#cateid").after("<span id='cateid_msg' style='color: red'>菜品类型不能为空</span>");
	return false;
}
if (price == "" || price == null) {
	$("#price").after("<span id='price_msg' style='color: red'>单价不能为空</span>");
	return false;
}
if (thestart == "" || thestart == null) {
	$("#thestart").after("<span id='thestart_msg' style='color: red'>开始日期不能为空</span>");
	return false;
}
if (theend == "" || theend == null) {
	$("#theend").after("<span id='theend_msg' style='color: red'>结束日期不能为空</span>");
	return false;
}
if (contents == "" || contents == null) {
	$("#contents").after("<span id='contents_msg' style='color: red'>菜品介绍不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#filmname_msg").empty();
$("#image_msg").empty();
$("#cateid_msg").empty();
$("#price_msg").empty();
$("#thestart_msg").empty();
$("#theend_msg").empty();
$("#contents_msg").empty();
});


});
