class KittensController < ApplicationController
  before_action :set_kitten, only: %i[show edit update destroy]
  def index
    @kittens = Kitten.all
  end
end
