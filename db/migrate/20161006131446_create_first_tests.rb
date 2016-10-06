class CreateFirstTests < ActiveRecord::Migration
  def change
    create_table :first_tests do |t|
      t.string :info1
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
