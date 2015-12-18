class PinsController < ApplicationController
before_action only: [:show, :edit, :update, :destroy]

def index
  @pins = Pin.all.order("created_at DESC")
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
  find_pin
end

def edit
  find_pin
end

def update
  find_pin
  if @pin.update(pin_params)
    redirect_to @pin, notice: "Your pin has been successfully updated."
  else
    render 'edit'
  end
end

def destroy
  find_pin
  if @pin.destroy
    redirect_to root_path, notice: "Your pin has been successfully destroyed."
  else
    render 'show'
  end
end


private
def pin_params
  params.require(:pin).permit(:title, :description)
end

def find_pin
  @pin = Pin.find(params[:id])
end

end
