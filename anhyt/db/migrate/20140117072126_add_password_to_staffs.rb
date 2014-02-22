class AddPasswordToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :password, :string
  end
end
