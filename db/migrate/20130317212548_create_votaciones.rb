class CreateVotaciones < ActiveRecord::Migration
  def change
    create_table :votaciones do |t|
      t.string :ref
      t.string :titulo
      t.text :descripcion
      t.date :fecha
      t.references :sesion

      t.timestamps
    end
  end
end
