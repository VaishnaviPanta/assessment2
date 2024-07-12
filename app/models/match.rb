class Match < ApplicationRecord
    attr_accessor :date, :location, :team1_id, :team2_id, :score_team1, :score_team2

    def initializer(date, location, team1_id, team2_id, score_team1, score_team2)
        @date = date
        @location = location
        @team1_id = team1_id
        @team2_id = team2_id
        @score_team1 = score_team1
        @score_team2 = score_team2
    end
    def to_s
      "date: #{@date} | location: #{@location} | team1_id: #{@team1_id} | team2_id: #{@team2_id} | 
        score_team1: #{@score_team1} | score_team2: #{@score_team2}"
    end
      
end
require 'csv'
data = CSV.read('/home/dispatchtrack/t20/matches.csv')
