
namespace :user do

  desc "Import users"
  task :import => :environment do
    to_import = [
      { email: "john@example.com", name: "John" },
      { email: "bob@example.com",  name: "Bob"  },
      { email: "may@example.com",  name: "May"  },
    ]

    to_import.each do |h|
      @user = User.find_by_email(h[:email])
      if @user.nil?
        @user = User.create(h)
      end

      old_name = @user.name
      @user.update(h)
      puts "User.name changed from #{old_name} to #{@user.name}"

    end
  end
end
