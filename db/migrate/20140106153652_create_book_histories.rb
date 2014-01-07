class CreateBookHistories < ActiveRecord::Migration
  def change
    create_table :book_histories do |t|
      t.integer :book_id, null: false
      t.integer :user_id, null: false
      t.boolean :is_returned, null: false, default: false

      t.timestamps
    end

    add_index :book_histories, :book_id
    add_index :book_histories, :user_id
  end
end
