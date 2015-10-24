class CreateSpecifications < ActiveRecord::Migration
  def change
    create_table :specifications do |t|
      t.string :model
      t.string :memory
      t.string :storage
      t.string :camera
      t.string :processor
      t.string :battery
      t.references :phone

      t.timestamps
    end
  end
end
