$(document).ready(function(){
	//Adapta o footer
	var size = ($(window).height() - $(".footer").height() - $(".header").height());
	$(".conteudo").css("min-height", size+"px");
	var loginSize = $(window).height() - $(".footer").height();
	$(".loginContent").css("min-height", loginSize+"px");
	
	//Aplica as máscaras
	$("#cep").mask("00000-000");
	$("#cpf").mask("000.000.000-00");
	$("#telefone").mask("(00) 0 0000-0000");

	//Aplica o tooltip
	$('#save').tooltip();
	$(".change").tooltip();
	$(".changeOwner").tooltip();
	$(".saveAnimal").tooltip();
	$(".cadastrarUser").tooltip();
	$(".cadastrarProprietario").tooltip();
	$("#ver").tooltip();
	$("#anamneseGeral").tooltip();
	$("#anamneseEspecial").tooltip();

	//Efeito da barra de pesquisa
	$(".glyphicon-chevron-down").click(function(){
		var x = $(this)[0].nextElementSibling.nextElementSibling.className;
		var classe = $(this)[0].className;
		var y = "#"+$(this)[0].id;
		$("."+x).toggle("slow");
		if( classe == "glyphicon glyphicon-chevron-right"){
			$(y).removeClass();
			$(y).addClass("glyphicon glyphicon-chevron-down");
		}else{
			$(y).removeClass();
			$(y).addClass("glyphicon glyphicon-chevron-right");
		}
	});
	
});