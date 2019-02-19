$(function(){
	$("#valins").blur(function(){
		var money = $("#valins").val()
		var pay;
		var pays;
		if(money-75>0 && money > 0){
			pay = (money-75)/50
			pays = parseInt(pay)+1
			if(pay<pays){
				pays = pays+1
			}
		}else{
			pays = 1
		}
		var t = "您需要支付"+pays+"元！";
		alert(t);
	})
})
