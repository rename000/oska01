$(function(){
	
	/*首页产品分类*/
	$('.pro-list li').mouseenter(function(){
		$(this).find('.pro-hover').css('opacity','0').animate({'opacity':'1'},300).show();
	})
	$('.pro-list li').mouseleave(function(){
		$(this).find('.pro-hover').css('opacity','1').animate({'opacity':'0'},300).show();
	})
	
	/*导航*/
	$('.nav-over').mouseenter(function(){
		$(this).find('.subset').css('opacity','0').animate({'opacity':'1'},300).show();
		$(this).find('.linex').css('opacity','0').animate({'opacity':'1'},300).show();
		$('.subsetbg').css('opacity','0').animate({'opacity':'1'},300).show();
	})
	$('.nav-over').mouseleave(function(){
		$(this).find('.subset').css('opacity','1').animate({'opacity':'0'},300).hide();
		$(this).find('.linex').css('opacity','1').animate({'opacity':'0'},300).hide();
		$('.subsetbg').css('opacity','1').animate({'opacity':'0'},300).hide();
	})
	
	
})
