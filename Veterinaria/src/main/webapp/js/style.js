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
	$('.change').tooltip();
	$(".salvarProprietario").tooltip();
	$(".changeOwner").tooltip();
	$(".saveAnimal").tooltip();
	$(".cadastrarUser").tooltip();
	$(".cadastrarProprietario").tooltip();
	$("#edit").tooltip();
	$("#ok").tooltip();
	$("#see").tooltip();
	$("#edit1").tooltip();
	$("#see1").tooltip();
	$("#ok1").tooltip();
	$("#edit2").tooltip();
	$("#see2").tooltip();
	$("#ok2").tooltip();
	$("#ok3").tooltip();
	$("#see3").tooltip();
	$("#edit3").tooltip();
	$("#ok4").tooltip();
	$("#ok5").tooltip();
	$("#see5").tooltip();
	$("#edit5").tooltip();
	
	/*Efeito da barra de pesquisa*/
	$(".owner").on("click", function(){
		if($(this)[0].className == "glyphicon glyphicon-chevron-right owner"){
			$(this).removeClass();
			$(this).addClass("glyphicon glyphicon-chevron-down owner")
		}else{
			$(this).removeClass();
			$(this).addClass("glyphicon glyphicon-chevron-right owner")
		}
		$($(this)[0].nextElementSibling.nextElementSibling).toggle("slow");
	});
	
	//Efeito da barra de pesquisa
	$(".animal").click(function(){
		var x = $(this)[0].nextElementSibling.nextElementSibling.className;
		var classe = $(this)[0].className;
		if( classe == "glyphicon glyphicon-chevron-down animal"){
			$(this).removeClass();
			$(this).addClass("glyphicon glyphicon-chevron-right animal");

		}else{
			$(this).removeClass();
			$(this).addClass("glyphicon glyphicon-chevron-down animal")
		}
		$($(this)[0].nextElementSibling.nextElementSibling).toggle("slow");
	});
	
});