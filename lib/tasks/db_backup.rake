namespace :db do
  desc "Perform a dump of the MySQL database and email it to webmaster@doubtaboutwill.org"
  task :backup => :environment do
    Mysqldump.create_backup!
  end
end
