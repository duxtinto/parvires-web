class AddRefToGrupoParlamentario < ActiveRecord::Migration
  def change
    add_column :grupo_parlamentarios, :ref, :string
  end
end
