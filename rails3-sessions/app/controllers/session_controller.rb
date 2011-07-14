class SessionController < ApplicationController
  def put
    session[:value] = params[:value] || 'nothing'
    get
  end
  def get
    puts "session=#{session[:value]}"
    render :text => "response=#{session[:value]}\n"
  end
end
