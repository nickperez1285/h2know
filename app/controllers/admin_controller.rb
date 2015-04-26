class AdminController < ApplicationController
	layout false
  def index
  end

  def emailer
  	User.find_each do |user|
  		h = Mymailer.new.send_mail :to => user.email, :msg => "hello "
  end
end
end 
