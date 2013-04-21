class CreateVotoPoliticos < ActiveRecord::Migration
  def change
    create_table :voto_politicos do |t|
      t.string :voto
      t.references :politico
      t.references :votacion

      t.timestamps
    end
  end
end
