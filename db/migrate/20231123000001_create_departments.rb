class CreateDepartments < ActiveRecord::Migration[7.1]
  def change
    create_table :departments do |t|
      t.string :name, null: false
      t.decimal :budget, precision: 10, scale: 2, null: false

      t.timestamps
    end
    
    add_index :departments, :name, unique: true
  end
end
