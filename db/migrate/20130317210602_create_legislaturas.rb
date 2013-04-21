class CreateLegislaturas < ActiveRecord::Migration
  def change
    create_table :legislaturas do |t|
      t.integer :num
      t.date :fechaInicio
      t.date :fechaFin
      t.references :camara

      t.timestamps
    end
  end
end
