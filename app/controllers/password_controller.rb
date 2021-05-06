class PasswordController < ApplicationController
    before_action :redirect_user_sign_in!
    def edit
    end
    def update
        if Current.user.update(password_params)
            redirect_to root_path,notice:"updated password"
        else
            render :edit
        end
    end
    private
    def password_params
        params.require(:user).permit(:password,:password_confirmation)
    end
end