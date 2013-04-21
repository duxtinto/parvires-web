class CreateVotacionWebs < ActiveRecord::Migration
  def change
    create_table :votacion_webs do |t|
      t.references :votacion
      t.string :ref
      t.string :titulo
      t.text :descripcion
      t.boolean :enabled, { :default => true }
      t.boolean :frontpage, { :default => false }

      t.timestamps
    end
    
    rename_column :voto_votantes, :votacion_id, :votacion_web_id
    rename_column :resultado_votantes, :votacion_id, :votacion_web_id 
    
  end
end
