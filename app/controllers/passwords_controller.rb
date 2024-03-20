class PasswordsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @password = Password.new
  end

  def edit
  end

  def create
    password = Password.new(password_params)
    password.save!
    redirect_to passwords_url, notice: "「#{password.name}」を登録しました。"
  end

  private

  def password_params
    params.require(:password).permit(:name, :user_id, :mail, :password_digest, :memo)
  end
end
