$(document).ready(function(){
	//Envia os formularios
	$(".change").click(function(){
		$("#changeProfile").submit();
	});
	$(".changeOwner").click(function(){
		$("#changeOwner").submit();
	});
	$(".saveAnimal").click(function(){
		$("#cadastroAnimal").submit();
	});
	$(".salvarProprietario").click(function(){
		$("#salvarProprietario").submit()
	});
	$(".cadastrarProprietario").click(function(){
		$("#cadastrarProprietario").submit();
	});
	$(".cadastrarUser").click(function(){
		$("#cadastrarUser").submit();
	});
	//Enviar informações gerais
	$("#save").click(function(){
		var prontuario = {
				ficha_clinica:$("#fichaClinica").val(),
    			data: $("#data").val(),
    			setor:$("#setor").val(),
    			aptidao:$("#aptidao").val(),
    			cidade:$("#cidade").val(),
    			animal:{
    				id:$("#animalId").val(),
    				idade:$("#idade").val(),
    				sexo:$("#sexo").val(),
    				peso:$("#peso").val(),
    				especie:$("#especie").val(),
    				raca:$("#raca").val(),
    				nome:$("#nome").val()
    			}
    		};
			$.ajax({
				url: 'http://localhost:8080/Veterinaria/infoGerais',
	            data: JSON.stringify(prontuario),
	            method: "POST",
	            dataType: "json",
	            contentType: "application/json",
	            success(e){ 
	            	console.log(e); 
	            },
	            error(e){ console.log
	            	(e);
	            }
	           
		});
	});

	//Enviar informações da Anamnese 
	$("#anamneseGeral").click(function(){
		var anamneseGeral = {
				motivoConsulta:$("#motivoConsulta").val(),
				antecedentesMorbidos:("#antecedentesMorbidos").val(),
				medidasSanitarias:("#medidasSanitarias").val()
		}
		$.ajax({
			method:"POST",
			url:'htt://localhost:8080/Veterinaria/anamneseGeral',
			data:JSON.stringify(anamneseGeral),
			contentType:"application/json",
			success(e){
				console.log(e);
			},
			error(e){
				console.log(e);
			}
		});
	});
});