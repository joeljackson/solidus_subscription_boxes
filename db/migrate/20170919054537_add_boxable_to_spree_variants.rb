class AddBoxableToSpreeVariants < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_variants, :boxable, :boolean
  end
end
