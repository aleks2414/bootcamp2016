class CreateThirdReviews < ActiveRecord::Migration
  def change
    create_table :third_reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :third_test, index: true, foreign_key: true
      t.integer :info2
      t.integer :likes1
      t.integer :aprendizaje1

      t.timestamps null: false
    end
  end
end
