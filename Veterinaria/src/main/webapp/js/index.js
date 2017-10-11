$(document).ready(function(){
	//Envia os formularios
	$(".change1").click(function(){
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
	            	toastr["success"](e.message);
	            },
	            fail(e){ 
	            	toastr["error"](e.message);
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
				toastr["success"](e.message);
				console.log(e);
			},
			fail(e){
				toastr["error"](e.message);
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
				toastr["success"](e.message);
			},
			fail(e){
				toastr["error"](e.message);
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
				toastr["success"](e.message);
			},
			fail(e){
				toastr["error"](e.message);
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
				urina:($("#urina").is(":checked") == true).toString(),
				histopatológico:($("#histopatologico").is(":checked") == true).toString(),
				ECG:($("#ecg").is(":checked") == true).toString(), 
				ultrassonografia:($("#ultrassonografia").is(":checked") == true).toString(), 
				swab:($("#swab").is(":checked") == true).toString(),  
				radiografia:($("#radio").is(":checked") == true).toString(),  
				liquidos:($("#liquidos").is(":checked") == true).toString(),  
				coproparasitologico:($("#copro").is(":checked") == true).toString(),
				outros:$("#others").val(),
				hemograma:($("#hemograma").is(":checked") == true).toString(),
				animalId:$("#animalId").val(),
				outros:$("#others").val(),
				animalId:$("#animalId").val()
			};
			$.ajax({
				method:"POST",
				url:'http://localhost:8080/Veterinaria/examesComplementares',
				data:JSON.stringify(Examescomplementares),
				contentType:"application/json",
				success(e){
					toastr["success"](e.message);
				},
				fail(e){
					toastr["error"](e.message);
				}
			});
		});
		
		$("#ok5").click(function(){
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
					toastr["success"](e.message);
				},
				fail(e){
					toastr["error"](e.message);
				}
			});
		});
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
				if(response.data.coproparasitologico == "true"){
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
					$("#hemograma").attr("checked",true);
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
					$("#dataresult").val(response.data.data);
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
					if(response.data.ultrasson == "true"){
						$("#ultrasson").attr("checked",true);
					}else{
						$("#ultrasson").attr("checked",false);
					}
					if(response.data.raio == "true"){
						$(".raio").attr("checked",true);
					}else{
						$(".raio").attr("checked",false);
					}
					var arrayClass = [".nExame",".regiao",".laudo",".diagnostico",".tratamento",".responsavel"];
					var arrayID = ["#nExame","#regiao","#laudo","#diagnostico","#tratamento","#responsavel"];
					if($("#raio").is(":checked") == true){
						$(".raio").attr("checked",true);
					}
					if($("#ultrasson").is(":checked") == true){
						$(".ultrasson").attr("checked",true);
					}
					inserir(arrayID, arrayClass);
					formatarDatas([".data",".tratamentoDomiciliar",".retorno",".internado",".alta",".obito",".eutanasia"],
							["#dataresult","#tratamentoDomiciliar","#retorno","#internado","#alta","#obito","#eutanasia"]);
			},
			fail(response){
				console.log(response);
			}
		});
	});
	
	//Envia os dados do retorno
	$("#ok6").click(function(){
		$.ajax({
			method:"POST",
			url:"http://localhost:8080/Veterinaria/retorno",
			contentType:"application/json",
			data:JSON.stringify({		
				resultados : {
				raio:($("#raioRetorno").is(":checked") == true).toString(),
				ultrasson:($("#ultrassonRetorno").is(":checked") == true).toString(),
				nExame:$("#numeroExameRetorno").val(), 
				regiao:$("#regiaoReturn").val(), 
				data:$("#dataRetorno").val(),
				laudo:$("#laudoRetorno").val(),
				diagnostico:$("#diagnosticoRetorno").val(), 
				tratamento:$("#tratamentoRetorno").val(),
				tratamentoDomiciliar:$("#tratamentoDomiciliarRetorno").val(), 
				retorno:$("#retornoRetorno").val(), 
				internado:$("#internadoRetorno").val(), 
				alta:$("#altaRetorno").val(), 
				obito:$("#obitoRetorno").val(), 
				eutanasia:$("#eutanasiaRetorno").val(), 
				responsavel:$("#responsavelRetorno").val()
		},
		exameFisico : {
				conciencia:$("#concienciaRetorno").val(),
				tempoPreenchimento:$("#tempoPreencimentoRetorno").val(),
				temperatura:$("#tempCorporeaRetorno").val(),
				escoreCorporal:$("#escoreRetorno").val(),
				freqCardiaca:$("#freqCardiacaRetorno").val(),
				medResidente:$("#medResidenteRetorno").val(),
				micropapulas:$("#micropapulasRetorno").val(),
				freqRespiratoria:$("#freqRespiratoriaRetorno").val(),
				postura:$("#posturaRetorno").val(),
				coloracao:$("#mucosasRetorno").val(),
				hidratacao:$("#hidratacaoRetorno").val(),
				pulso:$("#pulsoRetorno").val(),
				auscCardiaca:$("#auscuRespiratoriaRetorno").val(),
				auscRespiratoria:$("auscuRespiratoriaRetorno").val(),
				palpacao:$("#palpacaoRetorno").val(),
				percussao:$("#percussaoRetorno").val(),
				linfonodos:$("#linfondosRetorno").val(),
				observacoes:$("#observacoes").val(),
				suspeita:$("#suspeira").val()
		},	
		examesComplementares : {
				raspado:($("#raspadoRetorno").is(":checked") == true).toString(),
				bioquimicos:($("#bioquimicosRetorno").is(":checked") == true).toString(),
				citopatologico:($("#citopatologicoRetorno").is(":checked") == true).toString(),
				urina:($("#urinaRetorno").is(":checked") == true).toString(),
				histopatologico:($("#histopatologicoRetorno").is(":checked") == true).toString(),
				urina:($("#urinaRetorno").is(":checked") == true).toString(),
				ECG:($("#ecgRetorno").is(":checked") == true).toString(), 
				ultrassonografia:($("#ultrassonografiaRetorno").is(":checked") == true).toString(), 
				swab:($("#swabRetorno").is(":checked") == true).toString(),  
				radiografia:($("#radioRetorno").is(":checked") == true).toString(),  
				liquidos:($("#liquidosRetorno").is(":checked") == true).toString(),  
				coproparasitologico:($("#coproRetorno").is(":checked") == true).toString(),
				outros:$("#othersRetorno").val(),
				outros:$("#othersRetorno").val(),
				hemograma:($("#hemogramaRetorno").is(":checked") == true).toString()
			},
			date: $("#retornoRetorno").val(),
			anamnese:$("#anamneseRetorno").val(),
			animalId:$("#animalId").val(),
			idRetorno:$("#idRetorno").val()
			}),
			success(e){
				toastr["success"](e.message);
			},
			fail(e){
				toastr["error"](e.message);
			}
		});
		
	});
	
	$(".Linkretorno").click(function(){
		$.ajax({
			method:"GET",
			url:"http://localhost:8080/Veterinaria/dataRetorno",
			dataType:"json",
			data:{animalId:$("#animalId").val()
			},
			success(response){
				$(".items").empty();
				console.log(response);
				console.log(response.data);
				x = response.data;
				index = 0;
				while( index < x.length){
					$(".items").append("<li href = '#' value="+x[index].id+" class='list-group-item datas'>"+x[index].date[8]+x[index].date[9]+"/"+x[index].date[5]+x[index].date[6]+"/"+x[index].date[0]+x[index].date[1]+x[index].date[2]+x[index].date[3]+"</li>");
					index++;
				}
			},
			fail(response){
				
			}
		});

	});
	
	$(".cadastrarProprietario").click(function(){
		$.ajax({
			method:"POST",
			url:"http://localhost:8080/Veterinaria/cadastrar",
			dataType: "json",
			contentType: "application/json",
			data:JSON.stringify({
				nome:$("#nome").val(), 
				cep:$("#cep").val(), 
				profissao:$("#profissao").val(), 
				cpf:$("#cpf").val(), 
				telefone:$("#telefone").val(), 
				endereco:$("#endereco").val(), 
				referencias:$("#referencias").val()
			}),
			fail(e){
            	toastr["error"](e.message);
            	console.log(e);
			},
			success(e){
            	toastr["success"](e.message);
            	console.log(e);
			}
		});

	});
	
	$('.items').on('click', '.datas', function() {
		classe = $(this)[0].parentElement.previousElementSibling.className;
		$.ajax({
			method:"GET",
			url:"http://localhost:8080/Veterinaria/getReturn",
			dataType:"json",
			contentType: "application/json",
			data:{id:$(this).val()
			},
			success(response){
				$("#idRetorno").val(response.data.id);
				$("#concienciaRetorno").val(response.data.exameFisico.conciencia),
				$("#tempoPreencimentoRetorno").val(response.data.exameFisico.tempoPreenchimento),
				$("#tempCorporeaRetorno").val(response.data.exameFisico.temperatura),
				$("#escoreRetorno").val(response.data.exameFisico.escoreCorporal),
				$("#freqCardiacaRetorno").val(response.data.exameFisico.freqCardiaca),
				$("#medResidenteRetorno").val(response.data.exameFisico.medResidente),
				$("#micropapulasRetorno").val(response.data.exameFisico.micropapulas),
				$("#freqRespiratoriaRetorno").val(response.data.exameFisico.freqRespiratoria),
				$("#posturaRetorno").val(response.data.exameFisico.postura),
				$("#mucosasRetorno").val(response.data.exameFisico.coloracao),
				$("#hidratacaoRetorno").val(response.data.exameFisico.hidratacao),
				$("#pulsoRetorno").val(response.data.exameFisico.pulso),
				$("#auscuRespiratoriaRetorno").val(response.data.exameFisico.auscCardiaca),
				$("#palpacaoRetorno").val(response.data.exameFisico.palpacao),
				$("#percussaoRetorno").val(response.data.exameFisico.percussao),
				$("#linfondosRetorno").val(response.data.exameFisico.linfonodos),
				$("#observacoesRetorno").val(response.data.exameFisico.observacoes),
				$("#suspeiraRetorno").val(response.data.exameFisico.suspeita),
				$("#anamneseRetorno").val(response.data.anamnese)
				optionRemove = $("#concienciaRetorno")[0].firstElementChild.text;
				index = 0;
				$("#concienciaRetorno option").each(function(){
					var test = this;
					if(optionRemove == this.text && index != 0){
						this.remove();
					}index++;
				});
				index = 0;
				optionRemove = $("#escoreRetorno")[0].firstElementChild.text;
				$("#escoreRetorno option").each(function(){
					if(optionRemove == this.text && index != 0){
						this.remove();
					}index++;
				});
				
				if(response.data.resultados.raio == "true"){
					$("#raioRetorno").attr("checked",true);
				}else{
					$("#raioRetorno").attr("checked",false);
				}
				if(response.data.resultados.ultrasson == "true"){
					$("#ultrassonRetorno").attr("checked",true);
				}else{
					$("#ultrassonRetorno").attr("checked",false);
				}
				$("#numeroExameRetorno").val(response.data.resultados.nExame), 
				$("#regiaoReturn").val(response.data.resultados.regiao), 
				$("#dataRetorno").val(response.data.resultados.data),
				$("#laudoRetorno").val(response.data.resultados.laudo),
				$("#diagnosticoRetorno").val(response.data.resultados.diagnostico), 
				$("#tratamentoRetorno").val(response.data.resultados.tratamento),
				$("#tratamentoDomiciliarRetorno").val(response.data.resultados.tratamentoDomiciliar), 
				$("#retornoRetorno").val(response.data.resultados.retorno), 
				$("#internadoRetorno").val(response.data.resultados.internado), 
				$("#altaRetorno").val(response.data.resultados.alta), 
				$("#obitoRetorno").val(response.data.resultados.obito), 
				$("#eutanasiaRetorno").val(response.data.resultados.eutanasia), 
				$("#responsavelRetorno").val(response.data.resultados.responsavel)

				if(response.data.examesComplementares.raspado == "true"){
					$("#raspadoRetorno").attr("checked",true);
				}else{
					$("#raspadoRetorno").attr("checked",false);
				}
				if(response.data.examesComplementares.bioquimicos == "true"){
					$("#bioquimicosRetorno").attr("checked",true);
				}
				else{
					$("#bioquimicosRetorno").attr("checked",false);
				}
				if(response.data.examesComplementares.citopatologico == "true"){
					$("#citopatologicoRetorno").attr("checked",true);
				}
				else{
					$("#citopatologicoRetorno").attr("checked",false);
				}
				if(response.data.examesComplementares.urina == "true"){
					$("#urinaRetorno").attr("checked",true);
				}
				else{
					$("#urinaRetorno").attr("checked",false);
				}
				if(response.data.examesComplementares.histopatologico == "true"){
					$("#histopatologicoRetorno").attr("checked",true);
				}
				else{
					$("#histopatologicoRetorno").attr("checked",false);
				}
				if(response.data.examesComplementares.ECG == "true"){
					$("#ecgRetorno").attr("checked",true);
				}
				else{
					$("#ecgRetorno").attr("checked",false);
				}
				if(response.data.examesComplementares.ultrassonografia == "true"){
					$("#ultrassonografiaRetorno").attr("checked",true);
				}
				else{
					$("#ultrassonografiaRetorno").attr("checked",false);
				}
				if(response.data.examesComplementares.swab == "true"){
					$("#swabRetorno").attr("checked",true);
				}
				else{
					$("#swabRetorno").attr("checked",false);
				}
				if(response.data.examesComplementares.radio == "true"){
					$("#radioRetorno").attr("checked",true);
				}
				else{
					$("#radioRetorno").attr("checked",false);
				}
				if(response.data.examesComplementares.liquidos == "true"){
					$("#liquidosRetorno").attr("checked",true);
				}
				else{
					$("#liquidosRetorno").attr("checked",false);
				}
				if(response.data.examesComplementares.coproparasitologico == "true"){
					$("#coproRetorno").attr("checked",true);
				}
				else{
					$("#coproRetorno").attr("checked",false);
				}
				if(response.data.examesComplementares.outros == "" || response.data.examesComplementares.outros == " " || response.data.examesComplementares.outros == "  "){
					$("#outrosRetorno").attr("checked",false);
					$("#othersRetorno").val(" ");
					$('#othersRetorno').attr('disabled', 'disabled');
				}
				else{
					$("#outrosRetorno").attr("checked",true);
					$("#othersRetorno").val(response.data.examesComplementares.outros);
					$('#othersRetorno').removeAttr('disabled');
				}
				if(response.data.examesComplementares.hemograma == "true"){
					$("#hemogramaRetorno").attr("checked",true);
				}
				else{
					$("#hemogramaRetorno").attr("checked",false);
				}
				y = response.data;
			},
			fail(response){
				
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
	

	
	$("#outrosRetorno").click(function(){
		if($(this).is(":checked") == true){
			$('#othersRetorno').removeAttr('disabled');
		}else{
			 $('#othersRetorno').attr('disabled', 'disabled');
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
	$(".novaFicha").click(function(){
		$("#outrosRetorno").attr("checked",false);
		$("#othersRetorno").val(" ");
		$('#othersRetorno').attr('disabled', 'disabled');
		$("#idRetorno").val("");
		var idClass = [
			"#concienciaRetorno","#tempoPreencimentoRetorno","#tempCorporeaRetorno",
			"#escoreRetorno","#freqCardiacaRetorno","#medResidenteRetorno",
			"#micropapulasRetorno","#freqRespiratoriaRetorno","#posturaRetorno",
			"#mucosasRetorno","#hidratacaoRetorno","#pulsoRetorno","#auscuRespiratoriaRetorno",
			"#palpacaoRetorno","#percussaoRetorno","#linfondosRetorno","#observacoesRetorno",
			"#suspeiraRetorno","#anamneseRetorno","#numeroExameRetorno","#regiaoReturn",
			"#dataRetorno","#laudoRetorno","#diagnosticoRetorno","#tratamentoRetorno",
			"#tratamentoDomiciliarRetorno","#retornoRetorno","#internadoRetorno",
			"#altaRetorno","#obitoRetorno","#eutanasiaRetorno","#responsavelRetorno" ];
		index = 0;
		while(index < idClass.length){
			$(idClass[index]).val(" ");
			index++;
		}
		checkId = ["#hemogramaRetorno","#raspadoRetorno","#bioquimicosRetorno","#citopatologicoRetorno","#urinaRetorno",
					"#histopatologicoRetorno","#ecgRetorno","#ultrassonografiaRetorno","#raioRetorno","#ultrassonRetorno",
					"#swabRetorno","#radioRetorno","#liquidosRetorno","#coproRetorno"];
		index = 0;
		while(index < checkId.length){
			$(checkId[index]).attr("checked",false);
			index+=1;
		}
	});
	
	//Inserir informações atualizadas na aba de visualização
	function inserir(ArrayId, ArrayClass){
		var index = 0;
		while (index <ArrayId.length){
			$(ArrayClass[index]).html($(ArrayId[index]).val());
			index++;
		}
	}
	
	function formatarDatas(classes, ids){
		index = 0;
		while(index < classes.length){
			data = $(ids[index]).val();
			if (ids[index] == "#obito" || ids[index] == "#eutanasia"){
				$(classes[index]).html(data[8]+data[9]+"/"+data[5]+data[6]+"/"+data.substr(0,4)+""+data.substr(10,12));
				index++;
			}
			else{
				$(classes[index]).html(data[8]+data[9]+"/"+data[5]+data[6]+"/"+data.substr(0,4));
				index++;
			}
		}
	}
});