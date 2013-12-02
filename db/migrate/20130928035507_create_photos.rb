class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.attachment :image
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
