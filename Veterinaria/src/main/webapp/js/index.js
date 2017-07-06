$(document).ready(function(){
	var size = ($(window).height() - $(".header").height() - $(".footer").height());
	$(".conteudo").css("min-height", size+"px");
	$("#cep").mask("00000-000");
	$("#cpf").mask("000.000.000-00");
	$("#telefone").mask("(00) 00000-0000");
});