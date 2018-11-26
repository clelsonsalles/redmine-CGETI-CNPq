 $( function() {
    var dialog;

    dialog = $( "#modal-incluiAlinhamento" ).dialog({
      autoOpen: false,
      height: "auto",
      width: "auto",
      modal: true
    });

    $( "#fechar-modal-incluiAlinhamento" ).button().on( "click", function() {
      dialog.dialog( "close" );
    });
    $( "#abrir-modal-incluiAlinhamento" ).button().on( "click", function() {
      dialog.dialog( "open" );
    });
} );
