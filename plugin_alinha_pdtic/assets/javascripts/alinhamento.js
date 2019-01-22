 $( function() {
    var dialogAlinhamento;

    dialogAlinhamento = $( "#modal-Alinhamento" ).dialog({
      autoOpen: false,
      height: "auto",
      width: "auto",
      modal: true
    });

    $( "#fechar-modal-Alinhamento" ).button().on( "click", function() {
      dialogAlinhamento.dialog( "close" );
    });
    $( "#abrir-modal-Alinhamento" ).button().on( "click", function() {
      dialogAlinhamento.dialog( "open" );
    });


   var dialogIncluiAlinhamento;

    dialogIncluiAlinhamento = $( "#modal-incluiAlinhamento" ).dialog({
      autoOpen: false,
      height: "auto",
      width: "auto",
      modal: true
    });

    $( "#fechar-modal-incluiAlinhamento" ).button().on( "click", function() {
      dialogIncluiAlinhamento.dialog( "close" );
    });
    $( "#abrir-modal-incluiAlinhamento" ).button().on( "click", function() {
      dialogIncluiAlinhamento.dialog( "open" );
    });



} );
