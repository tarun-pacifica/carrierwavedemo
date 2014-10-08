class CreateArtgalleries < ActiveRecord::Migration
  def change
    create_table :art_galleries do |t|
      t.string :name
      t.string :location
      t.text :avatar
    end
  end
end
