class CreateTractorListings < ActiveRecord::Migration[7.1]
  def change
    create_table :tractor_listings do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.string :location
      t.string :make
      t.string :model
      t.integer :year
      t.integer :status

      t.timestamps
    end
    add_reference :tractor_listings, :user, null: false, foreign_key: true
   
  end
end


