class Player < ApplicationRecord
    belongs_to :team
    belongs_to :match
    before_destroy :not_captain
    after_create :increment_team_player_count
    after_destroy :derement_team_player_count
    validates :single_captain_per_team
    validates :name, presence: true
    validates :age, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :position, presence: true
    validates :team_id, presence: true
    validates :role, presence: true, inclusion: { in: %w(allrounder bowler batsman) }
    validates :is_captain, inclusion: { in: [true, false] }
    validates :is_active, inclusion: { in: [true, false] }
    enum role: { allrounder: 'allrounder', bowler: 'bowler', batsman: 'batsman' }
    default_scope {where(active: true)}
    scope :with_role, ->(role) {where(position:role)}
    private
    def not_captain
      if is_captain
        errors.add(:base, 'cannot delete a player who is a captain')
        throw :abort
      end
    end
    def increment_team_player_count
      team.increment!(:player_count)
    end
    def decrement_team_player_count
      team.decrement!(:player_count)
    end
    def single_captain_per_team
      if is_captain && team.players.where(is_captain: true).exists?
        errors.add(:is_captain, 'A team can only have one captain')
      end
    end
  end

  end
