class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  def index
    @user = User.all
    render json: @user
  end

  def create
    a = params["results"].each { |user| User.create(title: user[:name][:title], first: user[:name][:first], last: user[:name][:last], email: user[:email], cell: user[:cell], street: user[:location][:street], city: user[:location][:city], state: user[:location][:state], postcode: user[:location][:postcode], picture: user[:picture][:large], gender: user[:gender])}
    return a
end

  def update
    @user = User.find(params[:id])
    if @user.update(title: params[:title], first: params[:first], last: params[:last], email: params[:email], cell: params[:cell], street: params[:street], city: params[:city], state: params[:state], postcode: params[:postcode], picture: params[:picture], gender: params[:gender])
    render json: @user
    end
  end





end
