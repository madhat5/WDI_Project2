class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    #test
    @test = "Sim Sim Salabim"

    # @users = User.all
  end

  def show
  end


  # STRONG PARAMS/////////////////////////////////////////////////////////////////////////////

  def set_user
    @user = User.find(params[:id])
  end
end
