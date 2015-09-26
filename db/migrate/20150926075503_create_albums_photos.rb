class CreateAlbumsPhotos < ActiveRecord::Migration
  def change
    create_table :albums_photos do |t|
      t.belongs_to :album, index: true
      t.belongs_to :photo, index: true

      t.timestamps
    end
  end
end
