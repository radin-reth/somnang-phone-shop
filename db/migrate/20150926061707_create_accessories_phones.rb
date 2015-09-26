class CreateAccessoriesPhones < ActiveRecord::Migration
  def change
    create_table :accessories_phones, :id => false do |t|
      t.belongs_to :accessory, index: true
      t.belongs_to :phone, index: true

      t.timestamps
    end
  end
end
