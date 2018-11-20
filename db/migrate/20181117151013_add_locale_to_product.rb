class AddLocaleToProduct < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :name, :name_en
    rename_column :products, :description, :description_en
    add_column :products, :name_cs, :string
    add_column :products, :description_cs, :string
  end
end
