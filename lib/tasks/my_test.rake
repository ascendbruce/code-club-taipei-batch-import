
namespace :my_test do

  task :prepare => :environment do
    User.create(email: "john@example.com", name: "Default")
    User.create(email: "may@example.com",  name: "Hello")
  end

  task :run => ["db:schema:load", "my_test:prepare", "user:import"]
end
