class CreateDealerListings < ActiveRecord::Migration[7.1]
  def change
    create_table :dealer_listings do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :status

      t.timestamps
    end
    add_reference :dealer_listings, :user, null: false, foreign_key: { to_table: :users }
   
  end
end
