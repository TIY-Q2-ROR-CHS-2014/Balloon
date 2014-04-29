class CreateBalloons < ActiveRecord::Migration
  def change
    create_table :balloons do |t|
      t.string :name, null: false
      t.string :color
      t.integer :altitude
      t.string :location

      t.timestamps
    end
  end
end
