class UserMailer < ActionMailer::Base
 default :from => "priyanko.dey33@gmail.com"

 def registration_confirmation(user)
 	@user=user
    mail(:to => user.email, :subject => "Registered")
  end

  def query_mail(user)
  	@user=user
    mail(:to => "priyanko.dey33@gmail.com", :subject => "getting quote")
  	
  end


end





=begin
class UserMailer < ActionMailer::Base
  default :from => "ryan@railscasts.com"
  
  def registration_confirmation(user)
    @user = user
    attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end
end
=end


