class SessionsController < ApplicationController

  def create
    user = Student.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user_id: user.id, # the data that will be encoded
          exp: 24.hours.from_now.to_i  #the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # this is the secret key in
        "HS256" #the encryption algorithm
      )
      render json: {jwt: jwt, email: user.email, user_id: user.id}, status: :created
    else
      render json: {messge: "currently unauthorized"}, status: :unauthorized
    end
  end
end
