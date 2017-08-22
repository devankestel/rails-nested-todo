class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title, default: ""
      t.belongs_to :category, index: true
      t.timestamps null: false
    end
  end
end
