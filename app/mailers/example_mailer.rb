class ExampleMailer < ApplicationMailer
	 default :from => "cutyremon <cutyremon@gmail.com>"
  def sample_email(user)
        @user = user
        mail :to => "cutyremon@gmail.com", :subject => " anigram から送信する"
    end

  def follow_mail(user)
  @user=user 
  mail :to => @user.email, :subject => " anigram から送信する"
  end
  def comment_mail(user)
  	@user=user
  	 mail :to => @user.email, :subject => " anigram から送信する"
  end

end
