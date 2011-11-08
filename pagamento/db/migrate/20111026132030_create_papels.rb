class CreatePapels < ActiveRecord::Migration
  def change
    create_table :papels do |t|
      t.string :nome

      t.timestamps
    end
  end
end
