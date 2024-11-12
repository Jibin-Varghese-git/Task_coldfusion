$(document).ready(function(){

	$("#listContainer>.page_heading").click(function(event){

		if($(this).next().hasClass('active'))
		{
			$(this).next().removeClass('active');
            $(this).removeClass('pageDesc');
		}
		else
		{
            $(".page_heading").removeClass('pageDesc');
			$(".page_heading").next().removeClass('active');
			$(this).next().addClass('active');
            $(this).addClass('pageDesc');
		}
	});

});

