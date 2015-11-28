class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :email
      t.string :phone_number
      t.text   :description
      t.text   :recommend

      t.timestamps
    end
  end
end
