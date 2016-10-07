class CreateFifthReviews < ActiveRecord::Migration
  def change
    create_table :fifth_reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :fourth_test, index: true, foreign_key: true
      t.integer :problem2
      t.integer :cliente2
      t.integer :propuesta2
      t.integer :ventajas2
      t.integer :monetizacion2
      t.integer :comunicacion2

      t.timestamps null: false
    end
  end
end
