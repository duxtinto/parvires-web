class CreateResultadoPoliticoGrupos < ActiveRecord::Migration
  def change
    create_table :resultado_politico_grupos do |t|
      t.references :votacion
      t.references :grupoParlamentario
      t.text :votos, :comment => 'JSON Encoded field'

      t.timestamps
    end
  end
end
