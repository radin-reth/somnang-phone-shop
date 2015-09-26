class CreateCommunications < ActiveRecord::Migration
  def change
    create_table :communications do |t|
      t.text :address
      t.string :tel
      t.string :email
      t.text :business_hours

      t.timestamps
    end
  end
end
