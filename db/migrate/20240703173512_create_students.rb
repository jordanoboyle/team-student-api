class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.string :bio
      t.string :linked_in_url
      t.string :twitter_handle
      t.string :blog_url
      t.string :resume_url
      t.string :github_url
      t.string :image

      t.timestamps
    end
  end
end
