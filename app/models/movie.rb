class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

    def cast_role(actor, character_name, salary)
        Role.create(actor: actor, character_name: character_name, salary: salary, movie: self)
    end

    def self.all_credits
        Movie.all.order["{insert character name}: Played by {insert actor name}", "{insert character name}: Played by {insert actor name}", ...].first
    end

    def self.fire_actor(actor)
        
    end
end     

