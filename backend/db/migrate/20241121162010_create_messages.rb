class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.text :content
      t.integer :status

      t.timestamps
    end

    # Add references for sender and receiver both pointing to the users table
    add_reference :messages, :sender, null: false, foreign_key: { to_table: :users }
    add_reference :messages, :receiver, null: false, foreign_key: { to_table: :users }
  end
end
