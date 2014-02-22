class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.string :email
      t.integer :phone
      t.integer :QQ
      t.string :address

      t.timestamps
    end
  end
end
