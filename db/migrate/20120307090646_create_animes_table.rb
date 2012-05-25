class CreateAnimesTable < ActiveRecord::Migration
  def import_sql(file)
    conf = ActiveRecord::Base.configurations[RAILS_ENV]
    puts sql_file = File.join(Rails.root, 'db', 'migrate', 'sql', file + '.sql')
    cmd_line = "mysql -u root fayeanime_#{Rails.env} < #{sql_file}"
    raise Exception, "Error executing " + cmd_line unless system(cmd_line)    
  end

  def up 
    import_sql 'animes'
  end

  def down
    Anime.delete_all
  end

end

