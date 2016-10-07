class CreateSecondReviews < ActiveRecord::Migration
  def change
    create_table :second_reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :second_test, index: true, foreign_key: true
      t.integer :problema1
      t.integer :cliente1
      t.integer :alternativa1
      t.integer :solucion1
      t.integer :ventajas1

      t.timestamps null: false
    end
  end
end
