class CreateGrupoParlamentarios < ActiveRecord::Migration
  def change
    create_table :grupo_parlamentarios do |t|
      t.string :nombre
      t.references :partido
      t.references :camara

      t.timestamps
    end
  end
end
