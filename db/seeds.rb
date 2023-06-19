# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

very_long_description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dui vivamus arcu felis bibendum ut tristique et. Ac tortor dignissim convallis aenean et. Aliquet nec ullamcorper sit amet risus nullam. Gravida cum sociis natoque penatibus et magnis dis parturient montes. Fermentum leo vel orci porta non pulvinar neque. In mollis nunc sed id semper. Arcu odio ut sem nulla pharetra. Pharetra sit amet aliquam id. Augue interdum velit euismod in pellentesque massa placerat. Venenatis urna cursus eget nunc scelerisque viverra mauris in. Ut tristique et egestas quis ipsum suspendisse ultrices gravida dictum. Tortor posuere ac ut consequat semper. Malesuada bibendum arcu vitae elementum curabitur vitae. Pellentesque nec nam aliquam sem. Pellentesque dignissim enim sit amet venenatis urna. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Quis blandit turpis cursus in hac. Volutpat commodo sed egestas egestas fringilla phasellus faucibus. Diam maecenas ultricies mi eget mauris. Amet volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Fermentum et sollicitudin ac orci phasellus egestas tellus. Risus nec feugiat in fermentum posuere urna nec. Enim neque volutpat ac tincidunt vitae semper quis lectus. Aliquet eget sit amet tellus cras adipiscing enim eu turpis. Leo integer malesuada nunc vel risus commodo viverra maecenas accumsan. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Sit amet mattis vulputate enim nulla aliquet porttitor. Nibh cras pulvinar mattis nunc. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Morbi enim nunc faucibus a. Massa massa ultricies mi quis hendrerit dolor magna eget est. Maecenas pharetra convallis posuere morbi leo urna molestie. Iaculis eu non diam phasellus vestibulum lorem sed. At ultrices mi tempus imperdiet nulla. Ac tincidunt vitae semper quis lectus. At quis risus sed vulputate odio ut enim blandit volutpat. In fermentum et sollicitudin ac orci phasellus egestas tellus rutrum. Rutrum quisque non tellus orci. Amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Sed arcu non odio euismod lacinia at quis. Sit amet commodo nulla facilisi. Nulla at volutpat diam ut venenatis tellus in. Luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor. Potenti nullam ac tortor vitae purus faucibus. Ac tincidunt vitae semper quis lectus. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. A diam sollicitudin tempor id.'
labels = []
users = []

500.times do |i|
  labels << Label.create(name: "Label #{i}", color: %w[red black blue pink].sample(1), type: 'Label', description: very_long_description)
  users << User.create(login: "user#{i}", email: "email#{i}@email.com", password: SecureRandom.uuid)
end

10_000.times do |i|
  issue = Issue.create(number: Random.rand(1..1000), title: "Issue title #{i}", description: very_long_description)
  issue.user = users.sample(1).first
  issue.labels << labels.sample(100)
  issue.save!
end
