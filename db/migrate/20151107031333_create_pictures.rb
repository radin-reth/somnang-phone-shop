class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.attachment :avatar
      t.references :about_us

      t.timestamps
    end
  end
end
