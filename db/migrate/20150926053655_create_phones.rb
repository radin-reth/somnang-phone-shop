class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.belongs_to :brand, index:true
      t.string :name
      t.float :price
      t.integer :status
      t.string :tag_line
      t.text :description
      t.boolean :availability
      t.boolean :promotion

      t.timestamps
    end
  end
end
