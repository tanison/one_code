class CodesController < ApplicationController

  def index
    @code = Code.new
    @codes = Code.all
  end

  def new
    @code = Code.new
  end

  def create
    code = Code.new(code_params)
    code.save
    redirect_to root_path
  end

  def destroy
  end

  private

  def code_params
    params.require(:code).permit(:name, :program)
  end

end
