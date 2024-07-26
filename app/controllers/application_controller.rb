class ApplicationController < ActionController::Base
    include pundit
    before_action :authenticate_user!
rescue_from 
  pundit::NotAuthorizedError,
  with: :user_not_authorized
private
def user_not_authorized
    flash[:alert] = "Your are not authorized to perform this action."
    redirect_to(root_path)
end
end
