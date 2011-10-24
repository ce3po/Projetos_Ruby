class CreatePagamentos < ActiveRecord::Migration
  def change
    create_table :pagamentos do |t|
      t.string :caixa
      t.string :processo
      t.date :data
      t.text :observacao
      t.decimal :valor, precision: 2, scale:9
      t.references :fornecedor

      t.timestamps
    end
  end
end
