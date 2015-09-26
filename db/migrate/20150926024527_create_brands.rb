class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string   :name
      t.references :phone

      t.timestamps
    end
  end
end
