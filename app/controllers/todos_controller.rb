class TodosController < ApplicationController # rubocop:disable Style/Documentation,Style/FrozenStringLiteralComment
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params)
    redirect_to root_url
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    todo = Todo.find(params[:id])
    todo.update(todo_params)
    redirect_to root_url
    # else
    #   redirect_to show_
    # end
    # end
  end

  private

  def todo_params
    params.require(:todo).permit(:content)
  end
end
