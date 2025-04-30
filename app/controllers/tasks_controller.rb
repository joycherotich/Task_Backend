class TasksControlller < ApplicationController
    def index
        render: Task.all
    end
    def create 
        task = Task.new(task_params)
        if task.save
            render: task , statuss : created
        else
            render: { error: tasks.error. message}, status: :failed
        end
    end
    def destroy
        task = Task .find_by(id: params[:id])
        if task
            task.destroy
        else 
            render: {error: "Task not found to destroy"}, status: :not found
        end 
    end
    private
    def task_params
      params.require(:task).permit(:title, :description, :completed)
    end
  end
end