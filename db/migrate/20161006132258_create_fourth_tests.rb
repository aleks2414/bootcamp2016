class CreateFourthTests < ActiveRecord::Migration
  def change
    create_table :fourth_tests do |t|
      t.string :video
      t.integer :likes2
      t.string :aprendizajes2
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
