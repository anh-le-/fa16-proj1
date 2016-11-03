class AddHealthToPokemons < ActiveRecord::Migration
  def change
    add_column :pokemons, :healh, :integer
  end
end
