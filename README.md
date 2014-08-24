# Rails CodeClub Taipei - Batch import

## Get Started

    git clone git@github.com:ascendbruce/code-club-taipei-batch-import.git
    cd code-club-taipei-batch-import
    bundle install
    rake db:create db:migrate
    rake my_test:run
    # after refactoring the code in lib/tasks/user.rake
    rake my_test:run # again

## To erase all database changes

In terminal:

    rake db:drop db:create db:migrate

## Reference

* http://guides.rubyonrails.org/v3.2.13/active_record_querying.html#find-or-build-a-new-object
* http://apidock.com/rails/ActiveRecord/Relation/first_or_create
* http://apidock.com/rails/ActiveModel/Dirty/previous_changes
