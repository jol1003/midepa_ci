$(document).ready(function(){
  if($("#frmBus").length>0){$("#frmBus").submit(function(){if($("#txtbus").val()==""){$("#frmBus").before('<div class="err itp">Debe ingresar por lo menos un distrito</div>');$(".err").hide();$(".err").slideDown();return false;
}else{
	//$("#frmBus").submit();
}
});
  soloDecimales("txtpmn");soloDecimales("txtpmx");}
  $("#cboreg").change(function(){
	if($(".err").length>0){$(".err").remove();}
  	if($(this).val()==1){$("#dvreg").html('<div class="izql"><div class="mod"><div class="lbl">Nombres</div><div class="flef"><input type="text" name="txtnom" id="txtnom" class="txt txg" maxlength="52" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">DNI</div><div class="flef"><input type="text" name="txtdni" id="txtdni" class="txt" maxlength="8" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">Contrase&ntilde;a</div><div class="flef"><input type="password" name="txtpwd" id="txtpwd" class="txt txg" /></div><div class="flot"></div></div></div><div class="izql izqln"><div class="mod"><div class="lbl">Apellidos</div><div class="flef"><input type="text" name="txtape" id="txtape" class="txt txg" maxlength="52" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">Email</div><div class="flef"><input type="text" name="txtmai" id="txtmai" class="txt txg" maxlength="52" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">Repetir contrase&ntilde;a</div><div class="flef"><input type="password" name="txtpwr" id="txtpwr" class="txt txg" /></div><div class="flot"></div></div></div><div class="flot"></div>');soloNumeros("txtdni");}else{$("#dvreg").html('<div class="izql"><div class="mod"><div class="lbl">Tipo de empresa</div><div class="flef"><select name="cboemp" class="txt txg"><option value="1" selected="selected">Constructora</option><option value="2">Agente inmobiliario</option></select></div><div class="flot"></div></div><div class="mod"><div class="lbl">Nombre comercial</div><div class="flef"><input type="text" name="txtcom" id="txtcom" class="txt txg" maxlength="52" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">Email</div><div class="flef"><input type="text" name="txtmai" id="txtmai" class="txt txg" maxlength="52" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">Tel&eacute;fono</div><div class="flef"><input type="text" name="txttel" id="txttel" class="txt txg" maxlength="14" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">Direcci&oacute;n</div><div class="flef"><input type="text" name="txtdir" id="txtdir" class="txt txg" maxlength="80" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">P&aacute;gina web</div><div class="flef"><input type="text" name="txtpag" id="txtpag" class="txt txg" maxlength="100" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">Contrase&ntilde;a</div><div class="flef"><input type="password" name="txtpwd" id="txtpwd" class="txt txg" /></div><div class="flot"></div></div></div><div class="izql izqln"><div class="mod"><div class="lbl">RUC</div><div class="flef"><input type="text" name="txtruc" id="txtruc" class="txt" maxlength="11" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">Nombre de contacto</div><div class="flef"><input type="text" name="txtcon" id="txtcon" class="txt txg" maxlength="52" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">Logo</div><div class="flef"><input type="file" name="filimg" id="filimg" class="txt txg" /><div class="chi">Formatos: .jpg, .gif, .png &nbsp;&nbsp;|&nbsp;&nbsp; Peso máximo: 1MB</div></div><div class="flot"></div></div><div class="mod"><div class="lbl">Descripci&oacute;n</div><div class="flef"><textarea name="txtdes" id="txtdes" class="tex txg"></textarea></div><div class="flot"></div></div><div class="mod"><div class="lbl">Repetir contrase&ntilde;a</div><div class="flef"><input type="password" name="txtpwr" id="txtpwr" class="txt txg" /></div><div class="flot"></div></div></div><div class="flot"></div>');soloNumeros("txtruc"); soloTelefono("txttel");}
  });
  $("#frmReg").submit(function(){
	var msg="";if($(".err").length > 0){$(".err").remove();}
	if($("#cboreg").val()==1){if($.trim($("#txtnom").val())=="") msg+='<div class="ler">- Nombres</div>';if($.trim($("#txtape").val())=="") msg+='<div class="ler">- Apellidos</div>';if($.trim($("#txtdni").val())=="") msg+='<div class="ler">- DNI</div>';}else{if($.trim($("#txtcom").val())=="") msg+='<div class="ler">- Nombre comercial</div>';if($.trim($("#txtruc").val())=="") msg+='<div class="ler">- RUC</div>';if($.trim($("#txtcon").val())=="") msg+='<div class="ler">- Nombre de contacto</div>';if($.trim($("#txttel").val())=="") msg+='<div class="ler">- Telefono</div>';if($.trim($("#txtdir").val())=="") msg+='<div class="ler">- Direccion</div>';if($.trim($("#filimg").val())=="") msg+='<div class="ler">- Logo</div>';if($.trim($("#txtdes").val())=="") msg+='<div class="ler">- Descripcion</div>';}
	if($.trim($("#txtmai").val())=="") msg+='<div class="ler">- Email</div>';if($.trim($("#txtpwd").val())=="") msg+='<div class="ler">- Contraseña</div>';if($.trim($("#txtpwr").val())=="") msg+='<div class="ler">- Repetir contraseña</div>';if(msg != ""){msg='<div>* Los siguientes campos no deben estar vacios:</div>'+msg+'<div class="flot"></div>';}if(validarMail("txtmai")===false) msg+="<div>* El Email no es valido.</div>";if($.trim($("#txtpwd").val()) != $.trim($("#txtpwr").val())){msg+="<div>* Las contraseñas no son iguales.</div>";}if(!$("#chkter").is(':checked')) msg+='<div>* Aceptar los términos y condiciones de uso</div>';
	if(msg==""){$('#frmReg').submit();}else{$(".frr").before('<div class="err">'+msg+'</div>');$(".err").hide();$(".err").slideDown();return false;}
  });
  soloNumeros("txtdni");soloNumeros("txtruc");soloTelefono("txttel");
  
  $("#frmCue").submit(function(){
	var msg="";
		$("#frmCue .btx").hide();$(".lod").show();
		if($(".err").length > 0){
			$(".err").remove();
		}
		if($("#hdnreg").val()==1){
			if($.trim($("#txtnom").val())=="") msg+='<div class="ler">- Nombres</div>';
			if($.trim($("#txtape").val())=="") msg+='<div class="ler">- Apellidos</div>';
			if($.trim($("#txtdni").val())=="") msg+='<div class="ler">- DNI</div>';
		}else{
			if($.trim($("#txtcom").val())=="") msg+='<div class="ler">- Nombre comercial</div>';
			if($.trim($("#txtruc").val())=="") msg+='<div class="ler">- RUC</div>';
			if($.trim($("#txtcon").val())=="") msg+='<div class="ler">- Nombre de contacto</div>';
			if($.trim($("#txtdir").val())=="") msg+='<div class="ler">- Direccion</div>';
			if($.trim($("#hdnima").val())=="") msg+='<div class="ler">- Logo</div>';
			if($.trim($("#txtdes").val())=="") msg+='<div class="ler">- Descripcion</div>';
		}
	if($.trim($("#txtte1").val())=="") msg+='<div class="ler">- Telefono 1</div>';
	
	if(msg != ""){
		msg='<div>* Los siguientes campos no deben estar vacios:</div>'+msg+'<div class="flot"></div>';
	}
	//alert("jol");
	//if($.trim($("#txtpwd").val()) != $.trim($("#txtpwr").val())){msg+="<div>* Las contraseñas no son iguales.</div>";}
	//alert("jol");
	if(msg==""){
	  $("#frmCue").submit();
	}else{
	  if($(".god").length>0){$(".god").remove();};$("#frmCue .btx").show();$(".lod").hide();$(".frc").prepend('<div class="err itp">'+msg+'</div>');$(".err").hide();$(".err").slideDown();return false;
	}
  });
  soloTelefono("txtte1");soloTelefono("txtte2");soloTelefono("txtte3");
  
  if($(".tabs").length > 0){$('.tabs a').click(function(){switch_tabs($(this));});var url=location.href; url=url.split("#");if(url.length>1){switch_tabs($('a[rel="'+url[1]+'"]'));}else{switch_tabs($('.defaulttab'));}}
  
  if($("#frmInm").length>0){//Si estoy en el registro de inmuebles
  	$("#cbocat").change(function(){
	  if($(".err").length>0){$(".err").remove();};var cat=$("#hdncat").val();
  	  if($(this).val()==1){$("#dvinm").html('<div class="mod"><div class="lbl">Area total:</div><div class="flef"><input type="text" name="txtato" id="txtato" class="txt" maxlength="6" /> m²</div><div class="flot"></div></div><div class="mod"><div class="lbl">Area construida:</div><div class="flef"><input type="text" name="txtaco" id="txtaco" class="txt" maxlength="6" /> m²</div><div class="flot"></div></div><div class="mod"><div class="lbl">Antiguedad:</div><div class="flef"><select id="cboant" name="cboant" class="txt txg"><option value="">Seleccione</option><option value="1">Proyecto en construcci&oacute;n</option><option value="2">Usado</option><option value="3">Nuevo</option></select></div><div class="flot"></div></div><div class="mod"><div class="lbl">Precio:</div><div class="zlef">S/. <input type="text" name="txtpso" id="txtpso" class="txt" maxlength="8" /></div><div class="flef">$. <input type="text" name="txtpdo" id="txtpdo" class="txt" maxlength="8" value="" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">Numero de dormitorios:</div><div class="flef"><input type="text" name="txtdor" id="txtdor" class="txt" maxlength="2" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">Numero de ba&ntilde;os:</div><div class="flef"><input type="text" name="txtban" id="txtban" class="txt" maxlength="2" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">&Aacute;reas comunes:</div><div class="flef"><div class="mod"><input type="checkbox" name="chkarc[]" value="1" /> Canchita de Futbol</div><div class="mod"><input type="checkbox" name="chkarc[]" value="2" /> Patio</div><div class="mod"><input type="checkbox" name="chkarc[]" value="3" /> Lavander&iacute;a</div><div class="mod"><input type="checkbox" name="chkarc[]" value="5" /> Piscina</div><div class="mod"><input type="checkbox" name="chkarc[]" value="6" /> Gimnasio</div><div><input type="checkbox" name="chkarc[]" value="7" /> Juegos para ni&ntilde;os</div></div><div class="flot"></div></div><div><div class="lbl">Datos adicionales:</div><div class="flef"><textarea name="txtadi" class="tex txg"></textarea></div><div class="flot"></div></div>');soloDecimales("txtato");soloDecimales("txtaco");soloDecimales("txtpso");soloDecimales("txtpdo");soloNumeros("txtdor");soloNumeros("txtban");}else{$("#dvinm").html('<div class="mod"><div class="lbl">Antiguedad:</div><div class="flef"><select id="cboant" name="cboant" class="txt txg"><option value="">Seleccione</option><option value="1">Proyecto en construcci&oacute;n</option><option value="2">Usado</option><option value="3">Nuevo</option></select></div><div class="flot"></div></div><div class="mod"><div class="lbl">&Aacute;reas comunes:</div><div class="flef"><div class="mod"><input type="checkbox" name="chkarc[]" value="1" /> Canchita de Futbol</div><div class="mod"><input type="checkbox" name="chkarc[]" value="2" /> Patio</div><div class="mod"><input type="checkbox" name="chkarc[]" value="3" /> Lavander&iacute;a</div><div class="mod"><input type="checkbox" name="chkarc[]" value="5" /> Piscina</div><div class="mod"><input type="checkbox" name="chkarc[]" value="6" /> Gimnasio</div><div><input type="checkbox" name="chkarc[]" value="7" /> Juegos para ni&ntilde;os</div></div><div class="flot"></div></div><div class="mod"><div class="lbl">N° edificios:</div><div class="flef"><input type="text" name="txtedi" id="txtedi" class="txt" maxlength="2" /></div><div class="flot"></div></div><div class="mod"><div class="lbl">N° pisos:</div><div class="flef"><input type="text" name="txtpis" id="txtpis" class="txt" maxlength="2" /></div><div class="flot"></div></div><div><div class="lbl">P&aacute;gina del proyecto:</div><div class="flef"><input type="text" name="txtpag" id="txtpag" class="txt txg" maxlength="80" /></div><div class="flot"></div></div><div class="itm itp"><div class="lbl">Datos adicionales:</div><div class="flef"><textarea name="txtadi" class="tex txg"></textarea></div><div class="flot"></div></div><div><div class="ver mod">AGREGAR INMUEBLES DEL PROYECTO</div><div class="fcen roj">[Primero debe guardar el proyecto para agregar inmuebles]</div></div>');soloNumeros("txtedi");soloNumeros("txtpis");}
    });
    soloDecimales("txtato");soloDecimales("txtaco");soloDecimales("txtpso");soloDecimales("txtpdo");soloNumeros("txtdor");soloNumeros("txtban");soloNumeros("txtedi");soloNumeros("txtpis");
	if($("#cbodep").length>0){$("#cbodep").change(function(){var i=$(this).val();if(i!=""){llenarPro(i,0);}else{$("#cbopro").html('<option value="">[PROVINCIA]</option>');$("#cbodis").html('<option value="">[DISTRITO]</option>');}});}
    if($("#cbopro").length>0){$("#cbopro").change(function(){var i=$(this).val();if(i!=""){llenarDis(i,0);}else{$("#cbodis").html('<option value="">[DISTRITO]</option>');}});}
    $("#frmInm").submit(function(){
	  $("#frmInm .btx").hide();$(".lod").show();
	  var msg="";
	  if($(".err").length>0){$(".err").remove();}
	  var frmtip = $("#hdnfrmtip").val();
	  if($("#cbocat").val()==1){
	  	if($.trim($("#txtato").val())=="") msg+='<div class="ler">- Area total</div>';
	  }
	  if($("#cbotip").val()=="") msg+='<div class="ler">- Tipo de inmueble</div>';
	  if($.trim($("#txtnom").val())=="") msg+='<div class="ler">- Nombre</div>';
	  if($.trim($("#txtdir").val())=="") msg+='<div class="ler">- Direccion</div>';
	  if($.trim($("#cbodis").val())=="") msg+='<div class="ler">- Distrito</div>';
	  if($.trim($("#hdnlat").val())==""||$.trim($("#hdnlon").val())=="") msg+='<div class="ler">- Ubicaci&oacute;n en el mapa</div>';
	  if(frmtip!="upd"){if($("#filimg").val()=="") msg+='<div class="ler">- Imagen</div>';}
	  if(frmtip != "upd"){str = '<div class="err">';}else{str = '<div class="err itp">';}
	  if(msg!="") msg+='<div class="flot"></div>';
	  if($.trim($("#txtyou").val())!=""){if(!validaYou($("#txtyou").val())){msg+='<div>La url de youtube no es correcta.</div>';}}
	  if(msg==""){
		//$("#frmInm").submit();
	  }else{
		if($(".god").length>0){$(".god").remove();};$("#frmInm .btx").show();$(".lod").hide();
		var str = "";
		if(frmtip != "upd"){str = '<div class="err">';}else{str = '<div class="err itp">';}
		$("#frmInm").before(str+'<div>* Los siguientes campos no deben estar vacios:</div>'+msg+'</div>');$(".err").hide();$(".err").slideDown();return false;  
	  }
  	});
	
  }
  if($("#frmInmImg").length>0){//Si estoy en el registro de imagenes
    $("#frmInmImg").submit(function(){$("#frmInmImg .btm").hide();$(".lod").show();if($(".err").length>0){$(".err").remove();};if($("#filimg").val()==""){if($(".god").length>0){$(".god").remove();};$("#frmInmImg .btm").show();$(".lod").hide();$("#frmInmImg").before('<div class="err itp">El campo imagen no debe estar vacio.</div>');$(".err").hide();$(".err").slideDown();return false;}else{
																																																																																												  //$("#frmInmImg").submit();
																																																																																												  }});
  }
  if($("#frmRec").length>0){//Si estoy en recuperar contrasena
  	$("#frmRec").submit(function(){if($(".err").length > 0){$(".err").remove();}if(validarMail("txtusr")===false){$(".suv").after('<div class="err itp">El correo electronico no es valido</div>');$(".err").hide();$(".err").slideDown();return false;}else{$("#frmRec").submit();}});
  }
  if($("#frmRecAct").length>0){//Si estoy en activar contrasena
    $("#frmRecAct").submit(function(){var msg="";if($(".err").length>0){$(".err").remove();};if($("#txtpwd").val()==""||$("#txtpwr").val()=="") msg+='<div>Ningun campo debe estar vacio.</div>';if($("#txtpwd").val()!=$("#txtpwr").val()) msg+='<div>Las contraseñas no son iguales.</div>';if(msg==""){$("#frmRecAct").submit();}else{$("#frmRecAct").before('<div class="err itp">'+msg+'</div>');$(".err").hide();$(".err").slideDown();return false;}});
  }
  //GALERIA
  if($("#img").length>0){$(".jcarousel-skin-det img").click(function(){if($(this).hasClass("active")){return;};var url=$(this).attr("src").replace("thumbs/","");var wrap=$("#img").fadeTo("medium",0.5);var img=new Image();img.onload=function(){wrap.fadeTo("fast",1); wrap.find("img").attr("src",url);};img.src=url;$(".jcarousel-skin-det img").removeClass("active");$(this).addClass("active");}).filter(":first").click();};
  //IMPRIMIR
  $(".prt").click(function(){window.print();return false;});
});
function soloNumeros(txtObj){$("#"+txtObj).keypress(function(e){if(e.which==8||e.which==37||e.which==39) return true;if(/([^0-9]+)/.test(String.fromCharCode(e.which))) return false;});}
function soloDecimales(txtObj){$("#"+txtObj).keypress(function(e){if(e.which==8||e.which==37||e.which==39) return true;if(/([^0-9\.]+)/.test(String.fromCharCode(e.which))) return false;});}
function soloTelefono(txtObj){$("#"+txtObj).keypress(function(e){if(e.which==8) return true;if(!/([0-9\(\)#\-\+]+)/.test(String.fromCharCode(e.which))) return false;});}
function validarMail(txtObj){return /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/.test($.trim($("#"+txtObj).val()));}
function validaYou(url){return url.match(/https?:\/\/(?:[0-9A-Z-]+\.)?(?:youtu\.be\/|youtube\.com\S*[^\w\-\s])([\w\-]{11})(?=[^\w\-]|$)(?![?=&+%\w]*(?:['"][^<>]*>|<\/a>))[?=&+%\w-]*/ig);}
function switch_tabs(obj){$('.tab-content').hide();$('.tabs a').removeClass("sel");var id=obj.attr("rel");$('#'+id).show();obj.addClass("sel");}
function llenarDep(x){var obj=$.parseJSON(str);var html ='<option value="">[DEPARTAMENTO]</option>';$.each(obj,function(){html+='<option value="'+this['i']+'"';if(x!=0){if(x==this['i']){html+=' selected="selected"';}};html+='>'+this['n']+'</option>';});$("#cbodep").html(html);}
function llenarPro(i,x){$.ajax({url:iurl+"js/data/json_pro.json",cache:true,type:"post",dataType:"json",success:function(obj){var html='<option value="">[PROVINCIA]</option>';$.each(obj,function(){if(i==this['d']){html+='<option value="'+this['i']+'"';if(x!=0){if(x==this['i']){html+=' selected="selected"';}};html+='>'+this['n']+'</option>';}});$("#cbopro").html(html);},error:function(obj){alert("ERROR");}});}
function llenarDis(i,x){$.ajax({url:iurl+"js/data/json_dis.json",cache:true,type:"post",dataType:"json",success:function(obj){var html ='<option value="">[DISTRITO]</option>';$.each(obj,function(){if(i==this['p']){html+='<option value="'+this['i']+'"';if(x!=0){if(x==this['i']){html+=' selected="selected"';}};html+='>'+this['n']+'</option>';}});$("#cbodis").html(html);},error:function(obj){alert("ERROR");}});}