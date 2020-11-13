class TasksController < ApplicationController

  before_action :authenticate_user!# , only: [:create, :update, :destroy]
  before_action :set_task, only: [:destroy, :edit, :update]
  before_action :set_task_index, only: [:top, :destroy, :update, :create]

  def top
    # new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.new(tasks_params)
    if @task.save
    end
  end

  def edit
  end

  def update
    if @task.update(tasks_update_params)
      # flash[:success] = "更新しました"
    end
  end

  def destroy
    @task.destroy
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :content, :in_charge_name)
  end

  def tasks_update_params
    params.require(:task).permit(:title, :content, :in_charge_name, :progress)
  end
end
