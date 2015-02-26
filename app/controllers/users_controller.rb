class UsersController < ApplicationController

  doorkeeper_for :show, scopes: Settings.scopes.read.map(&:to_sym)

  def show
    render json: current_user
  end
end
