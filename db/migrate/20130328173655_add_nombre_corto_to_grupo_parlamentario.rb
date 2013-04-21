class AddNombreCortoToGrupoParlamentario < ActiveRecord::Migration
  def change
    add_column :grupo_parlamentarios, :nombreCorto, :string
  end
end
