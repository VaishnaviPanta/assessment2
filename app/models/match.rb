require 'csv'
class Match < ApplicationRecord
    def self.populate
        CSV.foreach("db/matches.csv", headers: true) do |row|
            match = Match.new
            match.date = row["date"]
            match.location = row["location"]
            match.team1_id = row["team1_id"]
            match.team2_id = row["team2_id"]
            match.score_team1 = row["score_team1"]
            match.score_team2 = row["score_team2"]
            match.save
        end
    end
end
