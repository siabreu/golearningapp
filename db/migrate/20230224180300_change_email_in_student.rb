class ChangeEmailInStudent < ActiveRecord::Migration[7.0]
  def change
    change_column :students, :email, :string, null: false, default: ""
    add_index :students, :email, unique: true
  end
end
