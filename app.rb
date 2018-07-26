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
    i= 0
    @number_int = @number.to_i
    #binding.pry
    @array = []
    while i < @number_int
      @array << "#{@phrase}"
      i+=1
    end
    @array.each do |element|
      element \n 
    end
  end

end
