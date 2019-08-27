class SessionsController < Clearance::SessionsController
  #layout 'application'

  #def new

  #end

  #def create
    #user = User.find_by(email: params[:session][:email].downcase)
    #if user && user.auth(params[:session][:password])
      # Log the user in and redirect to the user's show page.
    #else
      #flash[:danger] = 'Invalid email/password combination'
      #render 'new'
    #end
  #end

  #def destroy

  #end
end
