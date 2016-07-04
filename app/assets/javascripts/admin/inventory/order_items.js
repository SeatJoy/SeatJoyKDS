$(document).ready(function() {
  order_item_label();
  update_order_item();
});

function order_item_label() {
  $("[data-behavior~=inventory-order-item-label]").on("click", function(e) {
    var order_item_id = $(this).data("order-item-id");

    var field_name    = $(this).data("field-name");
    var label_id      = "#order_item_label_" + field_name + "_" + order_item_id;
    var label_in_dom  = $(label_id).hide();

    var input_id      = "#order_item_action_" + field_name + "_" + order_item_id;
    var input_in_dom  = $(input_id).show();

    input_in_dom.find("input").focus();
  });
}

function update_order_item() {
  $("[data-behavior~=save-inventory-order-item]").on("keypress", function(e) {

    if (e.which == 13) {
      var order_item_id = $(this).data("order-item-id");

      var field_name    = $(this).data("field-name");
      var field_value   = $(this).parent().find("input").val();

      var input_id      = "#order_item_action_" + field_name + "_" + order_item_id;
      var label_id      = "#order_item_label_" + field_name + "_" + order_item_id;


      if (field_value == "") {
        alert("Please setup a " + field_name);
      }
      else
      {
        $.ajax({
          type  : "PUT",
          url   : "/admin/inventory_order_items/" + order_item_id,
          data  : { inventory_order_item: { [field_name]: field_value } },
          beforeSend: function(xhr){
            xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
          },
          success  : function(data){
            $(input_id).hide();
            $(label_id).show();
            $(label_id).html(field_value);
          }
        });
      }

      e.preventDefault();
    }
  });
}
