class RemoveCapstoneIdStudents < ActiveRecord::Migration[7.1]
  def change
    remove_column :students, :capstone_id, :integer
  end
end
