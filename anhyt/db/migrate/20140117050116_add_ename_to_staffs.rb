class AddEnameToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :ename, :string
  end
end
