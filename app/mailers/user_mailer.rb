class UserMailer < ActionMailer::Base
  def admin_report(user, admin_email="development@taskwunder.com")
    @user = user
    attachments.inline["user_#{user.id}_info.pdf"] = pdf_report(user)
    mail(to: admin_email, subject: 'PDF report')
  end

  private

  def pdf_report(user)
    GeneratePdfReport.new(user).perform
  end
end
