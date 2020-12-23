class TodosController < ApplicationController
    before_action :authenticate
    
    def index
        @todos = Todo.all
    end
    
    def new
        @todo = Todo.new
    end

    def create
        @todo = Todo.new(todos_params)
        if @todo.save
            redirect_to todos_path
        end
    end

    private
    
    def todos_params
        params.require(:todo).permit(:title)
    end
end