# USAGE:

#require RAILS_ROOT + "/lib/" + "mysqldump.rb"
#dump = Mysqldump.full_backup
#response.headers['Content-Type'] = 'text/plain'
#response.headers['Content-Disposition'] = 'attachment; filename=DATABASE_' + Date.today.to_s + '.bak'
#render :text => dump

class Mysqldump
  def self.create_backup!
    info = YAML::load(IO.read("#{Rails.root}/config/database.yml"))[Rails.env]
    mysql_database = info["database"]
    mysql_user = info["username"]
    mysql_password = info["password"]

    dir = if Rails.env.production?
      "#{Rails.root}/../../shared/mysql_backup"
    else
      "#{Rails.root}/mysql_backup"
    end
    FileUtils.mkdir_p dir
    dump_file = "#{dir}/#{mysql_database}_#{Date.today.to_s.gsub('-','_')}.sql.gz"
    FileUtils.rm(dump_file) if File.exists?(dump_file)

    cmd = "mysqldump #{mysql_database} -u #{mysql_user} -p'#{mysql_password}' "
    cmd += " | gzip > #{dump_file}"

    begin
      if run(cmd)
        BackupMailer.backup(dump_file).deliver_now
      else
        raise("Couldn't create backup file")
      end
    rescue => e
      BackupMailer.error(e, dump_file).deliver_now
    end
  end #full_backup

  protected

  def self.run(command)
    result = system(command)
    raise("error running \"#{command}\", process exited with status #{$?.exitstatus}") unless result
    result
  end
end
