


        function activeSQL(){
         var inputsSQL = document.getElementsByClassName('classInputSQL');
         var inputSQL;
        for(i=0; i<inputsSQL.length; i++) {
        inputSQL=inputsSQL[i];
        inputSQL.disabled=false;
        }
        var boutonsEvaluer = document.getElementsByClassName('classBoutonEvaluer');
         var boutonEvaluer;
        for(i=0; i<inputsSQL.length; i++) {
        boutonEvaluer=boutonsEvaluer[i];
        boutonEvaluer.disabled=false;        
        }
        }

      
        
 function activeNewSession(nom,prenom,email){
  document.getElementById('divStatistiques').style.display="block";
 document.getElementById('idUserStatistiques').innerHTML=prenom+' '+nom+' ('+email+')';
  document.getElementById('idUserStatistiquesFin').innerHTML=prenom+' '+nom+' ('+email+')';
 document.getElementById('idUser').innerHTML=prenom+' '+nom+' ('+email+') - '+new Date();
 document.getElementById('idUser').style.display="block";
         var divs = document.getElementsByClassName('classUserAnswer');
         var div;
        for(i=0; i<divs.length; i++) {
        div=divs[i];
        div.style.display='block';
        }
}
         function desactiveSQL(){
         var inputsSQL = document.getElementsByClassName('classInputSQL');
         var inputSQL;
        for(i=0; i<inputsSQL.length; i++) {
        inputSQL=inputsSQL[i];
        inputSQL.disabled=true;
        }
        var boutonsEvaluer = document.getElementsByClassName('classBoutonEvaluer');
         var boutonEvaluer;
        for(i=0; i<inputsSQL.length; i++) {
        boutonEvaluer=boutonsEvaluer[i];
        boutonEvaluer.disabled=true;        
        }
        }

        function adapteNbLignesTextArea(numQuestion){
var ta=document.getElementById('inputSQL_'+numQuestion);
var str = ta.value ;
    var match = str.match(/\n/g) ;
    var nb;
    if (match)
        nb=match.length;
    else
        nb=0;
        nb=nb+1;
   
    if (ta.rows < nb)
        ta.rows=nb;
}


        function treatSQL_SELECT(numQuestion) {
        adapteNbLignesTextArea(numQuestion);
        desactiveSQL();
         java.treatSQL_SELECT(numQuestion,document.getElementById('inputSQL_'+numQuestion).value);
         incrementeNbTentativesEtPoints(numQuestion);
        }

        function treatSQL_UPDATING(numQuestion) {
        adapteNbLignesTextArea(numQuestion);
        desactiveSQL();
         java.treatSQL_UPDATING(numQuestion,document.getElementById('inputSQL_'+numQuestion).value);
         incrementeNbTentativesEtPoints(numQuestion);
        }

        function printErrorSQL(idErrorSQL,message,numColor){
        if (numColor==1)
        document.getElementById(idErrorSQL).style.color="#006400"; 
        else if (numColor==2)
        document.getElementById(idErrorSQL).style.color="#ED0000";
        else if (numColor==3)
        document.getElementById(idErrorSQL).style.color="#F4661B";
        document.getElementById(idErrorSQL).innerHTML=message;
        }

        function printResultSQL(idOutputSQL,result){
        document.getElementById(idOutputSQL).innerHTML=result;
        }

        function activeImageEvaluation(numImg,numQuestion){
        for (i = 0; i < 4; i++)
        if (i==numImg){
        document.getElementById('idImg_'+numImg+'_'+numQuestion).style.display="inline-block";
        document.getElementById('idEtat_'+numImg+'_'+numQuestion).style.display="inline-block";
        }
        else{
            document.getElementById('idImg_'+i+'_'+numQuestion).style.display="none";
            document.getElementById('idEtat_'+i+'_'+numQuestion).style.display="none";
        }
        }
function calculPoints(numQuestion){  
    var tdPointsAcquis=document.getElementById('idPointsAcquis_'+numQuestion);
    if (tdPointsAcquis.textContent=='0')
        return;
    var tdTotalPointsAcquis=document.getElementById('idTotalPointsAcquis');
    var tdPointsQuestion=document.getElementById('idPointsQuestion_'+numQuestion);
    
    var nbPointsAcquis=parseInt(tdPointsAcquis.textContent);
    var nbTotalPointsAcquis=parseInt(tdTotalPointsAcquis.textContent);
    var nbPointsQuestion=parseInt(tdPointsQuestion.textContent);
    nbTotalPointsAcquis=nbTotalPointsAcquis-nbPointsAcquis;
    nbPointsAcquis=0;

    var img=document.getElementById('idImg_1_'+numQuestion);
    
    if (img.style.display=="inline-block"){
        nbTotalPointsAcquis=nbTotalPointsAcquis+nbPointsQuestion;
       nbPointsAcquis=nbPointsQuestion;
    }
    tdTotalPointsAcquis.textContent=nbTotalPointsAcquis;
tdPointsAcquis.textContent=nbPointsAcquis;

var tdPointsSur20=document.getElementById('idPointsSur20');
var tdTotalPointsQuestion=document.getElementById('idTotalPointsQuestion');
var totalPointsQuestion=parseInt(tdTotalPointsQuestion.textContent);
var noteSur20=(nbTotalPointsAcquis*20.0)/totalPointsQuestion;
tdPointsSur20.textContent=(noteSur20.toFixed(2))+"/20";
}

function incrementeNbTentativesEtPoints(numQuestion){

    var td=document.getElementById('idTotalTentatives');
    var nb=parseInt(td.textContent);
    td.textContent=nb+1;
    td=document.getElementById('idTentatives_'+numQuestion);
    nb=parseInt(td.textContent);
    td.textContent=nb+1;
    
    var tdTotalPointsAcquis=document.getElementById('idTotalPointsAcquis');
    var tdPointsQuestion=document.getElementById('idPointsQuestion_'+numQuestion);
    var tdPointsAcquis=document.getElementById('idPointsAcquis_'+numQuestion);
    var nbPointsAcquis=parseInt(tdPointsAcquis.textContent);
    var nbTotalPointsAcquis=parseInt(tdTotalPointsAcquis.textContent);
    var nbPointsQuestion=parseInt(tdPointsQuestion.textContent);
    nbTotalPointsAcquis=nbTotalPointsAcquis-nbPointsAcquis;
    nbPointsAcquis=0;

    var img=document.getElementById('idImg_1_'+numQuestion);
    
    if (img.style.display=="inline-block"){
        nbTotalPointsAcquis=nbTotalPointsAcquis+nbPointsQuestion;
       nbPointsAcquis=nbPointsQuestion;
    }
    tdTotalPointsAcquis.textContent=nbTotalPointsAcquis;
tdPointsAcquis.textContent=nbPointsAcquis;

var tdPointsSur20=document.getElementById('idPointsSur20');
var tdTotalPointsQuestion=document.getElementById('idTotalPointsQuestion');
var totalPointsQuestion=parseInt(tdTotalPointsQuestion.textContent);
var noteSur20=(nbTotalPointsAcquis*20.0)/totalPointsQuestion;
tdPointsSur20.textContent=(noteSur20.toFixed(2))+"/20";
}


function changementSaisie(numImg,numQ){
    activeImageEvaluation(numImg,numQ);
    calculPoints(numQ);
    java.saisieQuizChange();
}

function hideSecondPart(idSecondPart,myId,otherId){
var div=document.getElementById(idSecondPart);
div.style.display="none";
var img=document.getElementById(myId);
img.style.display="none";
img=document.getElementById(otherId);
img.style.display="inline-block";
}

function showSecondPart(idSecondPart,myId,otherId){
var div=document.getElementById(idSecondPart);
div.style.display="block";
var img=document.getElementById(myId);
img.style.display="none";
img=document.getElementById(otherId);
img.style.display="inline-block";
}


function showSecondPartA(idSecondPart){
var div=document.getElementById(idSecondPart);
var numQ=idSecondPart.replace('idSecondPart_','');
var myId='idImgShow_'+numQ;
var otherId='idImgHide_'+numQ;
showSecondPart(idSecondPart,myId,otherId);
}

function showAllSecondParts(){
    var divs = document.getElementsByClassName('classSecondPart');
    var div;
    for(i=0; i<divs.length; i++) {
        div=divs[i];
        showSecondPartA(div.id)
    }
    
}

function hideMaskToPrint(){
    var divs = document.getElementsByClassName('classMaskToPrint');
         var div;
        for(i=0; i<divs.length; i++) {
        div=divs[i];
        div.style.display='none';
        }
}

function showMaskToPrint(){
    var divs = document.getElementsByClassName('classMaskToPrint');
         var div;
        for(i=0; i<divs.length; i++) {
        div=divs[i];
        div.style.display='block';
        }
}

function exportText() {
    var titre=document.getElementById("titreQuiz").textContent;
    var result="";
    result=result+"###########################################################\n";
     result=result+"# "+titre+"\n";
    result=result+"# "+document.getElementById('idUser').innerHTML+"\n";
    result=result+"# "+(new Date())+"\n";
    result=result+"###########################################################\n";
         var inputsSQL = document.getElementsByClassName('classInputSQL');
         var inputSQL;
         var splits;
        for(i=0; i<inputsSQL.length; i++) {
        inputSQL=inputsSQL[i];
        result=result+"###########################################################\n";
        splits=inputSQL.id.split('_');
        result=result+'# Série '+splits[1]+'\n';
        result=result+'# Question '+splits[2]+'\n';
        result=result+'# Points '+document.getElementById('idPointsAcquis_'+splits[1]+'_'+splits[2]).textContent+'\n';
        result=result+inputSQL.value;
        result=result+"\n###########################################################\n";
        }
        result=result+'# Total des Points sur 20 '+document.getElementById('idPointsSur20').textContent;
       result=result+"\n###########################################################\n";

         java.exportText(titre,result);  
}

function directExportText() {
    var titre=document.getElementById("titreQuiz").textContent;
    var result="";
    result=result+"###########################################################\n";
     result=result+"# "+titre+"\n";
    result=result+"# "+document.getElementById('idUser').innerHTML+"\n";
    result=result+"# "+(new Date())+"\n";
    result=result+"###########################################################\n";
         var inputsSQL = document.getElementsByClassName('classInputSQL');
         var inputSQL;
         var splits;
        for(i=0; i<inputsSQL.length; i++) {
        inputSQL=inputsSQL[i];
        result=result+"###########################################################\n";
        splits=inputSQL.id.split('_');
        result=result+'# Série '+splits[1]+'\n';
        result=result+'# Question '+splits[2]+'\n';
        result=result+'# Points '+document.getElementById('idPointsAcquis_'+splits[1]+'_'+splits[2]).textContent+'\n';
        result=result+inputSQL.value;
        result=result+"\n###########################################################\n";
        }
        result=result+'# Total des Points sur 20 '+document.getElementById('idPointsSur20').textContent;
       result=result+"\n###########################################################\n";

         java.directExportText(titre,result);  
}

