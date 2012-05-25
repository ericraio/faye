set_default(:mysql_host, "localhost")
set_default(:mysql_user) { application }
set_default(:mysql_password) { Capistrano::CLI.password_prompt "Mysql Password: " }
set_default(:mysql_database) { "#{application}_production" }

namespace :mysql do
  desc "Install the latest stable release of mysql."
  task :install, roles: :db, only: {primary: true} do
    run "#{sudo} apt-get -y install mysql-server"
    run "#{sudo} apt-get -y install mysql-client"
    run "#{sudo} apt-get -y install libmysqlclient-dev"
  end
  after "deploy:install", "mysql:install"

  desc "Create a database for this application."
  task :create_database, roles: :db, only: {primary: true} do
    # run %Q{#{sudo} rake db:create RAILS_ENV=production}
  end
  after "deploy:setup", "mysql:create_database"

  desc "Generate the database.yml configuration file."
  task :setup, roles: :app do
    run "mkdir -p #{shared_path}/config"
    template "mysql.yml.erb", "#{shared_path}/config/database.yml"
  end
  after "deploy:setup", "mysql:setup"

  desc "Symlink the database.yml file into latest release"
  task :symlink, roles: :app do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
  after "deploy:finalize_update", "mysql:symlink"
end
