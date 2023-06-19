class CreateLabels < ActiveRecord::Migration[7.0]
  def change
    create_table :labels do |t|
      t.string :name
      t.string :color
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
