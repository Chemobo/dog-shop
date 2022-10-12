class AddPriceToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :price, :integer
  end
end
