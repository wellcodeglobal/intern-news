module Admin
  class AuthController < ApplicationController
    #def login
    #end

    #def login_auth
      #user = User.find_by(username: params[:username])

      #if user.password == params[:password]
        #redirect_to auth_dashboard_path
      #else
        #redirect_to auth_login_path
      #end
    #end

    def signup
    end

    def create
      user = User.new(name: params[:name], email: params[:email], password: params[:password])
      user.save!

      if user
        flash[:success] = 'Berhasil!'
        redirect_to login
      else
        flash[:danger] = 'Gagal Sign Up.'
        redirect_to admin_auth_signup
      end
    end

    #def dashboard
    #end
  end
end
