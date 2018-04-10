class UsersController < ApplicationController
  def create
    user = User.create(name: params[:name], last_name: params[:last_name], email: params[:email], phone: params[:phone], password: params[:password], address: params[:address])

    render json: user
  end

  def destroy
    User.find(params[:id]).destroy
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes()
      redirect_to :action => 'show', :id => @user
    else
      render :action => 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.json { render json: @user.to_json}
    end
  end
end
