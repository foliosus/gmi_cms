class BackupMailer < ActionMailer::Base
  default from: 'webmaster@doubtaboutwill.org',
          to: 'webmaster@doubtaboutwill.org'

  def backup( filename )
    fname = get_filename(filename)

    attachments[fname] = File.read(filename)
    @filename = fname

    mail subject: "[backup] #{fname}"
  end

  def error( error, filename )
    fname = get_filename(filename)

    @error = error
    @filename = filename

    mail subject: "[backup] FAILED: #{fname}"
  end

  private

  def get_filename(filename)
    filename.split('/').last
  end
end
