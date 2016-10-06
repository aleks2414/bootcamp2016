class CreateThirdTests < ActiveRecord::Migration
  def change
    create_table :third_tests do |t|
      t.string :info2
      t.integer :likes1
      t.string :aprendizajes1
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
