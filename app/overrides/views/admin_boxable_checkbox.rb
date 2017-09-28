Deface::Override.new(
  virtual_path: "spree/admin/products/_form",
  name: "solidus_subscriptions_product_boxable_checkbox",
  insert_after: "[data-hook='admin_product_form_meta']",
  partial: "spree/admin/products/boxable_checkbox"
)