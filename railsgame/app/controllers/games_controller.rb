class GamesController < ApplicationController
  def play
     if !params[:user_guess].nil? && !params[:user_guess].empty?
       if params[:user_guess].to_i.odd?
         @result = "Odd"
       else
         @result = "Even"
       end
     end
     @user = User.find(cookies[:user_id])
   end
 end
