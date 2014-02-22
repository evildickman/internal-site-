json.array!(@staffs) do |staff|
  json.extract! staff, :id, :name, :sex, :age, :email, :phone, :QQ, :address
  json.url staff_url(staff, format: :json)
end
