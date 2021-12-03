class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum(:rating)
    end

    def self.most_popular_show
        # self.where("rating = ?", self.highest_rating)

        self.find_by(rating: self.highest_rating)

        # highest_rating = self.highest_rating
        # highest_rated = []
        # self.all.each do |show|
        #     if show.rating == highest_rating
        #         highest_rated << show
        #     end
        # end
        # highest_rated
    end

    def self.lowest_rating
        self.minimum(:rating)
    end

    def self.least_popular_show
        # self.where("rating = ?", self.lowest_rating)

        self.find_by(rating: self.lowest_rating)

        # lowest_rating = self.lowest_rating
        # lowest_rated = []
        # self.all.each do |show|
        #     if show.rating == lowest_rating
        #         lowest_rated << show
        #     end
        # end
        # lowest_rated
    end

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.popular_shows
        self.where("rating > ? ", 5)
    end

    def self.shows_by_alphabetical_order
        self.order(:name)
    end
end