class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.belongs_to :dietary, null: false, foreign_key: true
      t.string :description
      t.string :kind
      t.time :hour

      t.timestamps
    end
  end
end
