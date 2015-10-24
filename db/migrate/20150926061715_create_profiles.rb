class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :title
      t.string :email
      t.string :phone_number
      t.text   :description

      t.timestamps
    end
  end
end
