class PinsController < ApplicationController
before_action only: [:show, :edit, :update, :destroy]

def index
  @pin = Pin.new 
end

def new
  @pin = Pin.new
end

def create
  @pin = Pin.new(pin_params)

  if @pin.save
    redirect_to @pin, notice: "Yay! A new pin has been created."
  else
    render 'new'
  end
end

def show
end

def destroy
end


private
def pin_params
  params.require(:pin).permit(:title, :description)
end

def find_pin
  @pin = Pin.find(params[:id])
end

end
