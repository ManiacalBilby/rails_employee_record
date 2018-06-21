class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.integer :emp_no, null: false
      t.date :birth_date, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :gender, null: false
      t.string :title, null: false

      t.timestamps
    end
  end
end
