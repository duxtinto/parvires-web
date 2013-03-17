class CreateResultadoPoliticos < ActiveRecord::Migration
  def change
    create_table :resultado_politicos do |t|
      t.integer :numVotan
      t.integer :numNoVotan
      t.integer :aFavor
      t.integer :enContra
      t.integer :abstencion
      t.references :votacion

      t.timestamps
    end
  end
end
