
class ActiveRecord::ConnectionAdapters::MysqlAdapter
  def import_sql(file)
    conf = ActiveRecord::Base.configurations[RAILS_ENV]
    sql_file = File.join(RAILS_ROOT, 'db', 'migrate', 'sql', file + '.sql')
    cmd_line = "mysql -h "+conf["host"]+" -D "+conf["database"]+ " --user="+conf["username"]+" --password="+conf["password"]+" < "+sql_file
    raise Exception, "Error executing " + cmd_line unless system(cmd_line)    
  end
end

Rails.application.config.generators do |g|
end
