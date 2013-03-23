class CreateLegislaturaPoliticos < ActiveRecord::Migration
  def change
    create_table :legislatura_politicos do |t|
      t.date :fechaAlta
      t.date :fechaBaja
      t.boolean :enActivo
      t.references :politico
      t.references :legislatura
      t.references :grupoParlamentario
      
      t.timestamps
    end
  end
end
