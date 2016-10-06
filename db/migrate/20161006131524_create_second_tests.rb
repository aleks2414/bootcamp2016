class CreateSecondTests < ActiveRecord::Migration
  def change
    create_table :second_tests do |t|
      t.string :boceto
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
