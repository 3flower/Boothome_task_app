class TasksController < ApplicationController

  before_action :authenticate_user!# , only: [:create, :update, :destroy]
  before_action :set_task, only: [:destroy, :edit, :update]

  def top
    # new
    @task = Task.new
    # edit

    # index
    @tasks = Task.all
    @tasks_not = Task.where(progress: "未着手")
    @tasks_commencement = Task.where(progress: "着手中")
    @tasks_completion = Task.where(progress: "完了")
  end

  def create
    @task = current_user.tasks.new(tasks_params)
    if @task.save
      # flash[:notice] = "投稿しました"
      redirect_to root_path
    else
      render :top
    end
  end

  def edit
  end

  def update
    if @task.update(tasks_update_params)
      # flash[:success] = "更新しました"
      redirect_to root_path
   else
     render :top
   end
  end

  def destroy
    @task.destroy
    redirect_to root_path
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :content, :in_charge_name)
  end

  def tasks_update_params
    params.require(:task).permit(:title, :content, :in_charge_name, :progress)
  end
end
