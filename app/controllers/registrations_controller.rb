class RegistrationsController < ApplicationController
    def new 
        @user=User.new
    end
    def create
        @user=User.new(user_params)
        #@user=User.new(params[:user])
        #@user=User.new(email: "ftgyhuj", password: "fghj")
        if @user.save
            session[:user_id]=@user.id
            redirect_to root_path , notice: "created user"
        else
            render :new
        end
    end

    private 
    def user_params
        params.require(:user).permit(:email,:password,:password_confirmation)
    end
end