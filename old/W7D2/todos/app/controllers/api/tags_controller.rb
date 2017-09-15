class Api::TagsController < ApplicationController
  def index
    render json: Todo.find(params[:todo_id]).tags
  end
end
