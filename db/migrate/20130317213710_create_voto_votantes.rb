class CreateVotoVotantes < ActiveRecord::Migration
  def change
    create_table :voto_votantes do |t|
      t.string :voto
      t.date :fecha
      t.references :votante
      t.references :votacion

      t.timestamps
    end
  end
end
