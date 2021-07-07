class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
  	self.genre.name
  end

  def drake_made_this
  	drake_exists = Artist.find_by(name: "Drake")

  	if !drake_exists
  		drake = Artist.create(name: "Drake")
  	else
  		drake = drake_exists
  	end

  	self.artist = drake
  end
end