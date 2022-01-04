class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    def total_salary
        return #total salary for actor based on the salary for each of their roles 
    end

    def blockbusters
        return #collection of all Movie instances the actor performed in that have a box_office_earnings of > 50_000_000
    end

    def self.most_successful
        return _one_actor {}.highest total_salary
    end
end