json.array! @issues do |issue|
  json.title issue.title
  json.number issue.number
  json.description issue.description

  json.user do
    json.(issue.user, :login, :password, :email)
  end
  json.labels issue.labels do |label|
    json.(label, :name, :color, :type, :description)
  end
end


