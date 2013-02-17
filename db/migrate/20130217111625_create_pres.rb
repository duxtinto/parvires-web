class CreatePres < ActiveRecord::Migration
  def change
    create_table :pres do |t|
      t.string :email

      t.timestamps
    end
  end
end
