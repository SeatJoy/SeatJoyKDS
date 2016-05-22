$(document).ready(function(){
  mark_as_done();
});

function mark_as_done() {
  $("[data-behavior~=mark-as-done]").on("click", function() {
    var order_id = $(this).data("order-id")
    var dom_id   = "#order_" + order_id;
    // $("#loader").loader("show");

    $.ajax({
      type    : "PUT",
      beforeSend: function(xhr){
        xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
      },
      url      : "/orders/" + order_id + "/mark_as_done",
      data     : {},
      success  : function(data){
        $(dom_id).hide();
        // $("#loader").loader("hide");
      }
    });

  });
}
