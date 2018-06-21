class AddEmployeeIdToChildren < ActiveRecord::Migration[5.1]
  def change
    add_reference :children, :employee, index: true
  end
end
 