class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :comment
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :reviews, :users
  end
end
