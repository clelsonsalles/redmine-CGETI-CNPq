


// funcao da CGETI para tratar a arvore de projetos sem exibir as descricoes
  $( function() {
    $( "#accordion" ).accordion();

    var dialogCGTI;

    dialogCGETI = $( "#modal-CGETI" ).dialog({
      autoOpen: false,
      height: "auto",
      width: "auto",
      modal: true
    });

    $( "#fechar-modal-CGETI" ).button().on( "click", function() {
      dialogCGETI.dialog( "close" );
    });
    $( "#abrir-modal-CGETI" ).button().on( "click", function() {
      dialogCGETI.dialog( "open" );
    });


  } );

function alterarExibicao(id){
  $("#" + id).toggle();

}



$(document).ready(function(){
  $( ".label").css("font-weight", "bold");
  $( ".ui-accordion-content").css("max-height", "300px");

  $( "a.project .wiki, .description").hide();
  $( ".ui-widget-content > .description").show();
  $( ".controller-projects .wiki").css("padding-left", "25px");

  $( ".controller-projects .collapsed-text").addClass("box");
  $( ".controller-projects .collapsed-text").css("padding-left", "10px");
  $( ".controller-projects .collapsed-text").css("max-height", "150px");
  $( ".controller-projects .collapsed-text").css("overflow", "auto");

  $( "#projects-index ul.root li.root").css("font-size", "0.9em");
  $( "#projects-index ul.root li.root").css("float", "left");
  $( "#projects-index ul.root li.root").css("padding", "3px 3px ");
  $( "#projects-index ul.root li.root").css("margin", "10px");
  $( "#projects-index ul.root li.root").css("width", "30%");
  $( ".projects-hierarquia ul.root li.root").css("width", "95%"); 
  $( "#projects-index ul.root li.root").css("height", "260px", "important");
  $( ".projects-hierarquia ul.root li.root").css('cssText', "max-height: 260px !important");
  $( "#projects-index ul.root li.root").css("box-shadow", " 0 0 10px rgba(209, 143, 79, 0.6)");
  $( "#projects-index ul.root li.root").css("background-color", "rgba(209, 143, 79, 0.08)");

  $( "tr.closed").css("background-color", "rgba(36, 140, 17, 0.1)");
  $( "tr.overdue").css("background-color", "rgb(249, 175, 113, 0.3)");

  $( "#projects-index ul.root li.root").children().css("max-height", "220px");
  $( "#projects-index ul.root li.root").children().css("overflow", "auto");
  $( "#projects-index ul.root li.root").children().css("padding", "5px");

  $( "#projects-index").next().css("clear", "both");

});

