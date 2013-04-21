class CreateCamaras < ActiveRecord::Migration
  def change
    create_table :camaras do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
