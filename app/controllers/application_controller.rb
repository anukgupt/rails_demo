class ApplicationController < ActionController::Base
    before_action :set_current_user #this action runs before any other action
    def set_current_user ##rails looks for index.html.erb file inside views in about folder    
        if(session[:user_id])
            #@user=User.find(session[:user_id]) #find is used when we are sure we will find this is
            # @user=User.find_by(id: session[:user_id])
            Current.user = User.find_by(id: session[:user_id])
        end
    end

    def redirect_user_sign_in!
        redirect_to sign_in_path, alert: "you need to be signed to do that" if Current.user.nil?
    end
end
