class CreateVotantes < ActiveRecord::Migration
  def change
    create_table :votantes do |t|
      t.string :nombre
      t.string :apellidos

      t.timestamps
    end
    
    change_table :users do |t| 
      t.references :votante       
    end
  end
end
