class Home < ActiveRecord::Base

	 def self.upvote(id)
    self.where(:id => id).update_all("upvotes = upvotes + 1")
  end

  def self.downvote(id)
    self.where(:id => id).update_all("downvotes = downvotes + 1")
  end

end
