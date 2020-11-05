class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :mentor, foreign_key: true
      t.string :content, null: false
      t.integer :score, null: false

      t.timestamps
    end
  end
end
