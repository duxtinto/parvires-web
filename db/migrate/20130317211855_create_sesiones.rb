class CreateSesiones < ActiveRecord::Migration
  def change
    create_table :sesiones do |t|
      t.string :ref
      t.string :titulo
      t.text :descripcion
      t.date :fecha
      t.references :legislatura

      t.timestamps
    end
  end
end
