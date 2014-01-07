class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.references :book, index: true
      t.text :comment

      t.timestamps
    end
  end
end
