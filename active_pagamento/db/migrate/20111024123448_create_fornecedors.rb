class CreateFornecedors < ActiveRecord::Migration
  def change
    create_table :fornecedors do |t|
      t.string :cnpj
      t.string :cpf
      t.string :nome

      t.timestamps
    end
  end
end
