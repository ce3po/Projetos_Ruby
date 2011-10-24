class AddRascunhoToFornecedores < ActiveRecord::Migration
  def change
    add_column :fornecedores, :publicado, :boolean
  end
end
