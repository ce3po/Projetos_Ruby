class AddPapelIdToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :papel_id, :integer
  end
end
