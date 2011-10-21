class CreateConformidades < ActiveRecord::Migration
  def change
    create_table :conformidades do |t|
      t.string :caixa
      t.string :processo

      t.timestamps
    end
  end
end
