class UsersController < ApplicationController

    def create
        # user = User.create(
        #     name: params[:name],
        #     age: params[:age],
        #     username: params[:username],
        #     display_photo: params[:display_photo],
        #     password: params[:password],
        # )

        user = User.create(user_params)

        if user.valid?
            # renders user and successful creationg of user
            render json: user, status: :created
        else
            # renders rails validation messages and not succesful request
            render json: { message: user.errors.full_messages }, status: :bad_request
        end
    end


    private

    # when using require i get bad error 400, because require was looking for a user key which does not exist so error was raised
    def user_params
        params.permit(:name, :age, :username, :display_photo, :password)
    end
end
