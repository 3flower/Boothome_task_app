class TasksController < ApplicationController

  before_action :authenticate_user!
  before_action :set_task, only: [:destroy, :edit, :update]
  before_action :set_task_index, only: [:top, :destroy, :update, :create]

  def top
    # new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.new(tasks_params)
    if @task.save
      flash.now[:success] = "追加しました"
    end
  end

  def edit
  end

  def update
    if @task.update(tasks_update_params)
      flash.now[:success] = "更新しました"
    end
  end

  def destroy
    @task.destroy
    flash.now[:notice] = "削除しました"
  end

  def delete_file_attachment
    @file = ActiveStorage::Attachment.find(params[:id])
    @file.purge
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :content, :in_charge_name, files: [])
  end

  def tasks_update_params
    params.require(:task).permit(:title, :content, :in_charge_name, :progress, files: [])
  end
end
