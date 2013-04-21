class CreateIniciativas < ActiveRecord::Migration
  def change
    create_table :iniciativas do |t|
      t.string :titulo
      t.string :url, limit: 500

      t.timestamps
    end
    
    change_table :votaciones do |t|
      t.references :iniciativa
    end 
  end
end
