class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :breed
      t.string :image
      t.integer :likes

      t.timestamps
    end
  end
end
