class CreateSixthReviews < ActiveRecord::Migration
  def change
    create_table :sixth_reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :fourth_test, index: true, foreign_key: true
      t.integer :problem3
      t.integer :cliente3
      t.integer :propuesta3
      t.integer :ventajas3
      t.integer :monetizacion3
      t.integer :comunicacion3

      t.timestamps null: false
    end
  end
end
