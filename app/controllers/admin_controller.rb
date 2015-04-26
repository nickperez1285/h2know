class AdminController < ApplicationController
	layout false
  def index
  end

  def emailer
  	@p = Post.all
  	User.find_each do |user|
  		h = Mymailer.new.send_mail :to => user.email, :msg => "Greetings  #{user.name}  its about that time to update your daily water usage entries. If your looking for tips on how you can do so , take  a minute to go over our TOP 5 ideas of the day listed below.
  		1 #{@p[1].content}
  		2 #{@p[2].content}
  		3 #{@p[3].content}
  		4 #{@p[4].content}
  		5 #{@p[5].content}

  		"
  end
end
end 
