collection @issues
attributes :id, :title, :number, :description
child(:user) { attributes :login, :password, :email }
child :labels do
  attributes :name, :color, :type, :description
end