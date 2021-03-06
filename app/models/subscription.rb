class Subscription < ActiveRecord::Base
  attr_accessible :user_id, :conference_id
  validates_uniqueness_of :user_id, scope: [:conference_id]
  belongs_to :conference
  belongs_to :user

  validates_uniqueness_of :user_id, scope: :conference_id, message: 'already subscribed!'
end
