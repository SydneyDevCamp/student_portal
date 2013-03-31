class AnnouncementMailer < ActionMailer::Base
  default :from => "peter@sydneydevcamp.com"

  def a_mailer(announcement)
    @announcement = announcement
    @students = User.all
    @student_emails = @students.map { |u| u.email }
    mail(:to => @student_emails, :subject => "Sydney Dev Camp announcement: " + announcement.title)
    
  end
end
