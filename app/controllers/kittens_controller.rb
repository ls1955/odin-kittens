class KittensController < ApplicationController
  before_action :set_kitten, only: %i[show edit update destroy]
  def index
    @kittens = Kitten.all
  end

  def show; end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new kitten_params

    if @kitten.save
      redirect_to @kitten, notice: "Kitten has been successfully created."
    else
      flash.now[:error] = "Something went wrong."
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @kitten.update kitten_params
      redirect_to @kitten, notice: "Information has been successfully updated."
    else
      flash.now[:error] = "Something went wrong."
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @kitten.destroy

    redirect_to root_path, notice: "Kitten has been successfully removed."
  end

  private

  def set_kitten
    @kitten = Kitten.find params[:id]
  end

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
