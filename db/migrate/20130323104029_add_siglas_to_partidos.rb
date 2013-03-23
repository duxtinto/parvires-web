class AddSiglasToPartidos < ActiveRecord::Migration
  def change
    add_column :partidos, :siglas, :string
  end
end
