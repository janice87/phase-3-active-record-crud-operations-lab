# run rspec instead of learn test

class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        self.create(title: title)        
    end

    def self.first_movie
        self.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(attribute)
        Movie.find_by(attribute)
    end

    def self.find_movies_after_2002        
        Movie.where("release_date > 2002") #needs the " "
    end

    def update_with_attributes(attributes)
        self.update(attributes)
    end

    def self.update_all_titles(title)
        self.update(title: title)
    end

    #.delete_by_id deletes the record with the corresponding id
    # find takes in an id, find_by finds the first record matching some conditions
    def self.delete_by_id(id)
        movie = Movie.find(id)
        movie.destroy
    end

    def self.delete_all_movies
        Movie.destroy_all
    end
end