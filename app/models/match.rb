class Match < ApplicationRecord
  has_many :players
  has_many :teams
require 'csv'
class Match < ApplicationRecord
    def self.process_data(path)
        CSV.read(path, headers: true).map do |row|
            {
              date: row['date'],
              location: row['location'],
            }
          end
    end
    def self.push_data(path)
        data = process_data(path)
        data.each do |match_attributes|
          Match.create!(match_attributes)
        end
      end
  
end
before_save :date_not_in_the_past
after_create :log_creation_message
scope :upcomming, ->{where('date >= ?' Date.today)}
scope :for_team, ->(team_id){where("home_team_id = ? OR away_team_id = ?",team_id,team_id)}
scope :within_date_range, ->(start_date, end_date){where(date: start_date..end_date)}
private
def date_not_in_the_past
  if date < Date.today
    errors.add(:date,'can not be in the past')
    throw.abort
  end
end
def log_creation_message
  Rails.logger.info "Match created: #{home_team_name} vs #{away_team_name} on #{date} at #{location}"
end
end