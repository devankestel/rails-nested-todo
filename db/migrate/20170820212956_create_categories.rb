class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, default: ""
      t.integer :point_value, default: 0

      t.timestamps null: false
    end
  end
end
