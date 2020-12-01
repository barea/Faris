class ApplicationController < ActionController::Base

  def after_sign_in_path_for(user)
    if current_user.owner?
      myStore_stores_path
    else
    current_user.customer?
      stores_path
    end

  end
end
