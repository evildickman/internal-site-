class AddRemarkToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :remark, :string
  end
end
