class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.integer :child_no
      t.integer :emp_no
      t.string :first_name
      t.string :last_name
      t.integer :gender
      t.date :birth_date
      t.integer :relationship

      t.timestamps
    end
  end
end
