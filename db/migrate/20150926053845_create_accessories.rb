class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :name
      t.float :price
      t.text :description
      t.text :features

      t.timestamps
    end
  end
end
