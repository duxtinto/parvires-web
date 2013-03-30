class AddLegislaturaIdToIniciativas < ActiveRecord::Migration
  def change
    change_table :iniciativas do |t|
      t.references :legislatura
    end 
  end
end
