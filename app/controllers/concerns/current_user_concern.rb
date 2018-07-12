module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: 'Guest User',
                   email: 'guest@email.com',
                   first_name: 'Guest',
                   last_name: 'Guest')
  end
end
