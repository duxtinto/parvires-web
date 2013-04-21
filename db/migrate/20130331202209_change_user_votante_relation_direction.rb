class ChangeUserVotanteRelationDirection < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.remove :votante_id
    end
    change_table :votantes do |t|
      t.references :user
    end
  end

  def down
  end
end
