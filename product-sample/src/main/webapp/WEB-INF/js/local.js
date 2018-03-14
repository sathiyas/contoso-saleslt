$(document).ready(function(){
	$('#saveId').click(function(e){
		var data= {"productCategoryId": $('#productnameId').val(),"productCategoryName":$('#categoryId').val()};
		console.log(JSON.stringify(data));
		$.ajax({
			type: "POST",
			contentType: "application/json",
			url:"/product-sample/save-product",
			data: JSON.stringify(data),
			success: function(response){
				console.log(response);
				if(response === "success"){
					$('#successId').show();
					$('#errorId').hide();
				}else{
					$('#successId').hide();
					$('#errorId').show();
				}
			},
			error: function(error){
				$('#successId').hide();
				$('#errorId').show();
			}
		});
	})
});