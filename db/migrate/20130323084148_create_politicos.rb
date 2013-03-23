class CreatePoliticos < ActiveRecord::Migration
  def change
    create_table :politicos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
