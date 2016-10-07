class CreateFouthReviews < ActiveRecord::Migration
  def change
    create_table :fouth_reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :fourth_test, index: true, foreign_key: true
      t.integer :video
      t.integer :likes2
      t.integer :aprendizaje2

      t.timestamps null: false
    end
  end
end
