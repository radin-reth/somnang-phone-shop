class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :accessory
      t.references :profile
      t.references :service
      
      t.timestamps
    end
  end
end
