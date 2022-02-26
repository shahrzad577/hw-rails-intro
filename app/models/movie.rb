class Movie < ActiveRecord::Base
    def self.ratings_
        return Movie.select (:rating).distinct.inject([]) {|a,m| a.push m.rating }
    end    
end