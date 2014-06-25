class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, :class_name => "User"

  validate :cannot_add_self

  private

  def cannot_add_self
    binding.pry
    errors.add(:friend_id, 'You cannot add yourself as a friend.') if current_user.id == friend_id
  end

end
