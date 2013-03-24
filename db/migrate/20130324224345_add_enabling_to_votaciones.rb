class AddEnablingToVotaciones < ActiveRecord::Migration
  def change
    add_column :votaciones, :enabled, :boolean, :default => true
    add_column :votaciones, :frontpage, :boolean, :default => false
  end
end
