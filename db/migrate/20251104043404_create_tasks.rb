class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.text :specific
      t.text :measurable
      t.text :achievable
      t.text :relevant
      t.text :time_bound
      t.date :start_date
      t.date :due_date
      t.date :completion_date
      t.text :description
      t.integer :status
      t.integer :priority

      t.timestamps
    end
  end
end
