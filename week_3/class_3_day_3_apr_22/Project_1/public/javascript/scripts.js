$(document).ready(function(){
	$(".facebookbutton").click(function(){
		alert ("This will take us to a facebook page");
	});
	$(".twitterbutton").click(function(){
		alert ("This will take us to a twitter page");
	});
	$(".instagrambutton").click(function(){
		alert ("This will take us to an instagram page");
	});
	$("#am").hover(function(){
		$(this).find(".mediali").stop().slideToggle(300);
	});
	$(".toggle-nav").click(function(){
		$(".nav").slideToggle(300, function(){
			$(this).toggleClass('nav-expanded').css('display', '');
		});
	});

	$('.menu li').click(function(){
		$('.menu li.active').removeClass('active');
		$(this).addClass('active');
		
		var showpanel = $(this).attr('rel');
		$('.panels .panel.active').fadeOut(300, function(){
			$(this).removeClass('active');

			
			$('#'+showpanel).fadeIn(300, function(){
				$(this).addClass('active');
			});
		});
	});

	$(".toggle-nav").click(function(){
		$(".nav").slideToggle(300, function(){
			$(this).toggleClass('nav-expanded').css('display', '');
		});
	});

	$('button').click(function(){
		Alert('We got your donation');
	});
});