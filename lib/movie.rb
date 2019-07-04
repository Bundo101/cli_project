
class Movie
  
  attr_accessor :title, :year, :rank, :url, :critic_score, :user_score, :sample_review
  
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def find_movie_by_rank(rank)
    self.all.detect { |movie| movie.rank == rank }    
  end
  
  def get_extra_info
   movie_hash = Scraper.new.scraped_movie_to_hash(self)
   

  end
  
end