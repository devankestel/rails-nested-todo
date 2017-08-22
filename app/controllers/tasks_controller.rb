class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end
    def new
        @task = Task.new
    end
    def create
        Task.create!(task_params)
        redirect_to action: "index"
    end
    def update

    end
    def destroy

    end
    def task_params
        params.require(:task).permit(:title, :category_id)
    end

end
