require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @reversed_name = @name.reverse
    "#{@reversed_name}"
  end

  get "/square/:number" do
    @number = params[:number]
    @squared_number = @number.to_i * @number.to_i
    "#{@squared_number}"
  end

  get "/say/:number/:phrase" do 
    @number = params[:number]
    @phrase = params[:phrase]
    i = 0 
    for i < @number.to_i 
      "#{@phrase}"
    end 
  end 

end
