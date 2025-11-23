class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.decimal :salary, precision: 10, scale: 2, null: false
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
    
    add_index :employees, :email, unique: true
  end
end
