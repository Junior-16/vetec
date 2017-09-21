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
	$("#ok").click(function(){
		ArrayId = ['#fichaClinica',"#data","#setor","#nome","#aptidao","#cidade","#endereco","#idade","#sexo","#peso","#raca"];
		ArrayClass = [".fichaClinica",".data",".setor",".nome",".aptidao",".cidade",".endereco",".idade",".sexo",".peso",".raca"];
		inserir(ArrayId, ArrayClass);
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
	            fail(e){ 
	            	console.log(e);
	            }
	           
		});
	});

	//Enviar informações da Anamnese Geral
	$("#ok1").click(function(){
		var classe = [".motivo",".antecedentes",".medidas"];
		var ids = ["#motivoConsulta","#antecedentesMorbidos","#medidasSanitarias"];
		inserir(ids,classe); 
		var anamneseGeral = {
				motivoConsulta:$("#motivoConsulta").val(),
				antecedentesMorbidos:$("#antecedentesMorbidos").val(),
				medidasSanitarias:$("#medidasSanitarias").val(),
				animalId:$("#animalId").val()
		};
		$.ajax({
			method:"POST",
			url:'http://localhost:8080/Veterinaria/anamneseGeral',
			data:JSON.stringify(anamneseGeral),
			contentType:"application/json",
			success(e){
				console.log(e);
			},
			fail(e){
				console.log(e);
			}
		});
	});
	//Post dos campos da Anamnese Especial
	$("#ok2").click(function(){
		var arrayClass = [".sistemaVisual",".sistemaRespiratorio",".sistemaDigestivo",".sistemaReprodutivo",".sistemaUrinario",".sistemaNervoso",".sistemaLocomotor",".peleAnexos"];
		var arrayId = ["#sistemaVisual","#sistemaRespiratorio","#sistemaDigestivo","#sistemaReprodutivo","#sistemaUrinario","#sistemaNervoso","#sistemaLocomotor","#peleAnexos"];
		inserir(arrayId, arrayClass);
		var anamneseEspecial = {
				sistemaVisual:$("#sistemaVisual").val(),
				sistemaDigestivo:$("#sistemaDigestivo").val(),
				sistemaUrinario:$("#sistemaUrinario").val(),
				sistemaLocomotor:$("#sistemaLocomotor").val(),
				sistemaRespiratorio:$("#sistemaRespiratorio").val(),
				sistemaReprodutivo:$("#sistemaReprodutivo").val(),
				sistemaNervoso:$("#sistemaNervoso").val(),
				peleAnexos:$("#peleAnexos").val(),
				animalId:$("#animalId").val()
		};
		$.ajax({
			method:"POST",
			url:'http://localhost:8080/Veterinaria/anamneseEspecial',
			data:JSON.stringify(anamneseEspecial),
			contentType:"application/json",
			success(e){
				console.log(e);
			},
			fail(e){
				console.log(e);
			}
		});
	});
	$("#ok3").click(function(){
		var arrayid = ["#conciencia","#escore","#tempoPreencimento","#tempCorporea","#freqRespiratoria","#medResidente","#micropapulas",
			"#freqCardiaca","#postura","#mucosas","#hidratacao","#pulso","#auscuCardiaca","#auscuRespiratoria",
			"#palpacao","#percussao","#linfondos","#observacoes","#suspeira"];
		var arrayclass = [".conciencia",".escore",".tempoPreencimento",".tempCorporea",".freqRespiratoria",".medResidente",".micropapulas",
			".freqCardiaca",".postura",".mucosas",".hidratacao",".pulso",".auscuCardiaca",".auscuRespiratoria",".palpacao",
			".percussao",".linfondos",".observacoes",".suspeira"];
		inserir(arrayid,arrayclass);
		var exameFisico = {
				conciencia:$("#conciencia").val(),
				tempoPreenchimento:$("#tempoPreencimento").val(),
				temperatura:$("#tempCorporea").val(),
				escoreCorporal:$("#escore").val(),
				freqCardiaca:$("#freqCardiaca").val(),
				medResidente:$("#medResidente").val(),
				micropapulas:$("#micropapulas").val(),
				freqRespiratoria:$("#freqRespiratoria").val(),
				postura:$("#postura").val(),
				coloracao:$("#mucosas").val(),
				hidratacao:$("#hidratacao").val(),
				pulso:$("#pulso").val(),
				auscCardiaca:$("#auscuCardiaca").val(),
				auscRespiratoria:$("#auscuRespiratoria").val(),
				palpacao:$("#palpacao").val(),
				percussao:$("#percussao").val(),
				linfonodos:$("#linfondos").val(),
				observacoes:$("#observacoes").val(),
				suspeita:$("#suspeira").val(),
				animalId:$("#animalId").val()
				
		};
		$.ajax({
			method:"POST",
			url:'http://localhost:8080/Veterinaria/exameFisico',
			data:JSON.stringify(exameFisico),
			contentType:"application/json",
			success(e){
				console.log(e);
			},
			fail(e){
				console.log(e);
			}
		});
	});
		$("#ok4").click(function(){
			var Examescomplementares = {
				raspado:($("#raspado").is(":checked") == true).toString(),
				bioquimicos:($("#bioquimicos").is(":checked") == true).toString(),
				citopatologico:($("#citopatologico").is(":checked") == true).toString(),
				urina:($("#urina").is(":checked") == true).toString(),
				histopatologico:($("#histopatologico").is(":checked") == true).toString(),
				ECG:($("#ecg").is(":checked") == true).toString(), 
				ultrassonografia:($("#ultrassonografia").is(":checked") == true).toString(), 
				swab:($("#swab").is(":checked") == true).toString(),  
				radiografia:($("#radio").is(":checked") == true).toString(),  
				liquidos:($("#liquidos").is(":checked") == true).toString(),  
				coproparasitologico:($("#copro").is(":checked") == true).toString(),
				outros:$("#others").val(),
				hemograma:($("#hemograma").is(":checked") == true).toString(),
				animalId:$("#animalId").val()
			};
			$.ajax({
				method:"POST",
				url:'http://localhost:8080/Veterinaria/examesComplementares',
				data:JSON.stringify(Examescomplementares),
				contentType:"application/json",
				success(e){
					console.log(e);
				},
				fail(e){
					console.log(e);
				}
			});
		});
		
		$("#ok5").click(function(){
			var arrayClass = [".nExame",".regiao",".data",".laudo",".diagnostico",".tratamento",".tratamentoDomiciliar",".retorno",".internado",".alta",".obito",".eutanasia",".responsavel"];
			var arrayID = ["#nExame","#regiao","#data","#laudo","#diagnostico","#tratamento","#tratamentoDomiciliar","#retorno","#internado","#alta","#obito","#eutanasia","#responsavel"];
			inserir(ArrayID, arrayClass);
			var resultados = {
				raio:($("#raio").is(":checked") == true).toString(),
				ultrasson:($("#ultrasson").is(":checked") == true).toString(),
				nExame:$("#nExame").val(), 
				regiao:$("#regiao").val(), 
				data:$("#data").val(),
				laudo:$("#laudo").val(),
				diagnostico:$("#diagnostico").val(), 
				tratamento:$("#tratamento").val(),
				tratamentoDomiciliar:$("#tratamentoDomiciliar").val(), 
				retorno:$("#retorno").val(), 
				internado:$("#internado").val(), 
				alta:$("#alta").val(), 
				obito:$("#obito").val(), 
				eutanasia:$("#eutanasia").val(), 
				responsavel:$("#responsavel").val(),
				animalId:$("#animalId").val()
			};
			$.ajax({
				method:"POST",
				url:"http://localhost:8080/Veterinaria/resultados",
				data:JSON.stringify(resultados),
				contentType:"application/json",
				success(e){
					console.log(e.message);
				},
				fail(e){
					console.log(e);
				}
			});
		});
		
	//Essa requisição tá retornando muitos objetos - ñ tá funcionando
	$("#complementares").click(function(){
		$.ajax({
			method:"GET",
			url:"http://localhost:8080/Veterinaria/examescomplementares",
			data:{id:$("#animalId").val()},
			contentType:"application/json",
			success(response){
				console.log(response.data);
				if(response.data.raspado == "true"){
					$("#raspado").attr("checked",true);
				}else{
					$("#raspado").attr("checked",false);
				}
				if(response.data.bioquimicos == "true"){
					$("#bioquimicos").attr("checked",true);
				}
				else{
					$("#bioquimicos").attr("checked",false);
				}
				if(response.data.citopatologico == "true"){
					$("#citopatologico").attr("checked",true);
				}
				else{
					$("#citopatologico").attr("checked",false);
				}
				if(response.data.urina == "true"){
					$("#urina").attr("checked",true);
				}
				else{
					$("#urina").attr("checked",false);
				}
				if(response.data.histopatologico == "true"){
					$("#histopatologico").attr("checked",true);
				}
				else{
					$("#histopatologico").attr("checked",false);
				}
				if(response.data.ECG == "true"){
					$("#ecg").attr("checked",true);
				}
				else{
					$("#ecg").attr("checked",false);
				}
				if(response.data.ultrassonografia == "true"){
					$("#ultrassonografia").attr("checked",true);
				}
				else{
					$("#ultrassonografia").attr("checked",false);
				}
				if(response.data.swab == "true"){
					$("#swab").attr("checked",true);
				}
				else{
					$("#swab").attr("checked",false);
				}
				if(response.data.radiografia == "true"){
					$("#radio").attr("checked",true);
				}
				else{
					$("#radio").attr("checked",false);
				}
				if(response.data.liquidos == "true"){
					$("#liquidos").attr("checked",true);
				}
				else{
					$("#liquidos").attr("checked",false);
				}
				if(response.data.coproparasitológico == "true"){
					$("#copro").attr("checked",true);
				}
				else{
					$("#copro").attr("checked",false);
				}
				if(response.data.outros == ""){
					$("#outros").val("checked",false);
				}
				else{
					$("#outros").attr("checked",true);
					$("#others").val(response.data.outros);
					$('#others').removeAttr('disabled');
				}
				if(response.data.hemograma == "true"){
					$("#hemograma").val("checked",true);
				}
				else{
					$("#hemograma").attr("checked",false);
				}
			},
			fail(e){
				console.log("não deu");
			}
		});
	});
	
	$("#resultado").click(function(){
		$.ajax({
			method:"GET",
			url:"http://localhost:8080/Veterinaria/resultados",
			data:{id:$("#animalId").val()},
			contentType:"application/json",
			success(response){
					$("#nExame").val(response.data.nExame);
					$("#regiao").val(response.data.regiao);
					$("#data").val(response.data.data);
					$("#laudo").val(response.data.laudo);
					$("#diagnostico").val(response.data.diagnostico);
					$("#tratamento").val(response.data.tratamento);
					$("#tratamentoDomiciliar").val(response.data.tratamentoDomiciliar);
					$("#retorno").val(response.data.retorno);
					$("#internado").val(response.data.internado);
					$("#alta").val(response.data.alta);
					$("#obito").val(response.data.obito);
					$("#eutanasia").val(response.data.eutanasia);
					$("#responsavel").val(response.data.responsavel);
			},
			fail(response){
				console.log(response);
			}
		});
	});
	
	$("#outros").click(function(){
		if($(this).is(":checked") == true){
			$('#others').removeAttr('disabled');
		}else{
			 $('#others').attr('disabled', 'disabled');
		}
	});
	
	$("#exame").click(function(){
		optionRemove = $("#conciencia")[0].firstElementChild.text;
		index = 0;
		$("#conciencia option").each(function(){
			var test = this;
			if(optionRemove == this.text && index != 0){
				this.remove();
			}index++;
		});
		index = 0;
		optionRemove = $("#escore")[0].firstElementChild.text;
		$("#escore option").each(function(){
			if(optionRemove == this.text && index != 0){
				this.remove();
			}index++;
		});
	});
	//Inserir informações atualizadas na aba de visualização
	function inserir(ArrayId, ArrayClass){
		var index = 0;
		while (index <ArrayId.length){
			$(ArrayClass[index]).html($(ArrayId[index]).val());
			index++;
		}
	}
});