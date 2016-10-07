class CreateFirstReviews < ActiveRecord::Migration
  def change
    create_table :first_reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :first_test, index: true, foreign_key: true
      t.integer :info1

      t.timestamps null: false
    end
  end
end
