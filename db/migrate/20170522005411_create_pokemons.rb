class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :attack
      t.integer :defense
      t.text :avatar_url

      t.timestamps
    end
  end
end
