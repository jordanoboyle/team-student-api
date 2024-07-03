class AddCapstoneIdToStudent < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :capstone_id, :integer
  end
end
