class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|

      t.integer :user_id
      t.string  :title
      t.string  :content
      t.integer :progress, default: 0
      t.string :in_charge_name

      t.timestamps
    end
  end
end
