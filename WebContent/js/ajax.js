$(function() {
	$('#cityid').change(
			function() {
				var cityid = $("#cityid").val();
				var loc = $("input[name='basepath']").val();
				var url = loc + "ajax/getCinema.action?cityid=" + cityid;
				$.ajax({
					type : "get",
					url : url,
					dataType : "json",
					success : function(json) {
						var cinemaid = json.cinemaid.replace("[", "").replace("]", "").split(",");
						var cinemaname = json.cinemaname.replace("[", "").replace("]", "").split(",");
						var myOptions = '<option value="">---请选择连锁店---</option>';
						for (var i = 0; i < cinemaid.length; i++) {
							myOptions += '<option value="' + cinemaid[i] + '">' + cinemaname[i] + '</option>';
						}
						$("#cinemaid").empty();
						$("#cinemaid").html(myOptions);
					},
					error : function() {
						alert("ajax请求发生错误3");
					}
				});
			});
});

$(function() {
	$('#sub').click(function(){
		var cityid = $("#cityid").val();
		$("#cityid_msg").empty();
		if (cityid == "" || cityid == null) {
			$("#cityid").after("<span id='cityid_msg' style='color: red'>请选择城市</span>");
			return false;
		}
		var cinemaid = $("#cinemaid").val();
		$("#cinemaid_msg").empty();
		if (cinemaid == "" || cinemaid == null) {
			$("#cinemaid").after("<span id='cinemaid_msg' style='color: red'>请选择连锁店</span>");
			return false;
		}
		var cinemaid = $("#viewdate").val();
		$("#viewdate_msg").empty();
		if (viewdate == "" || viewdate == null) {
			$("#viewdate").after("<span id='viewdate_msg' style='color: red'>请选择观看日期</span>");
			return false;
		}
	});
});


