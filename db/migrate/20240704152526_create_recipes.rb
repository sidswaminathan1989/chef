class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :ingredients
      t.string :steps
      t.integer :chef_id

      t.timestamps
    end
  end
end
