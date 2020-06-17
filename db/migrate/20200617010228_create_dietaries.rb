class CreateDietaries < ActiveRecord::Migration[6.0]
  def change
    create_table :dietaries do |t|
      t.float :weight
      t.float :height
      t.float :ideal_weight
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
