class UserMailer < ApplicationMailer
  default from: 'admin@example.com'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: '登録完了')
  end
end
