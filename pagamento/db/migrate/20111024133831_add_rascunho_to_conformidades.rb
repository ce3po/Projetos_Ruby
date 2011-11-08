class AddRascunhoToConformidades < ActiveRecord::Migration
  def change
    add_column :conformidades, :publicado, :boolean
  end
end
