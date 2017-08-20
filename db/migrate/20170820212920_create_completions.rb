class CreateCompletions < ActiveRecord::Migration
  def change
    create_table :completions do |t|
      t.boolean :is_completed, default: false
      t.datetime :date_completed, default: nil

      t.timestamps null: false
    end
  end
end
