Deface::Override.new(:virtual_path => "spree/admin/orders/edit",
                     :name => "print_buttons",
                     :insert_bottom => "[data-hook='admin_order_edit_buttons'], #admin_order_edit_buttons[data-hook]",
                     :partial => "spree/orders/print_buttons",
                     :disabled => false)