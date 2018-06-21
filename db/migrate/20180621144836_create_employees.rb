class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.integer :emp_no
      t.date :birth_date
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.string :title

      t.timestamps
    end
  end
end
