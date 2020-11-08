class TasksController < ApplicationController

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
    binding.pry
    @task = current_user.tasks.new(tasks_params)
    # @task = Task.new(
    #   title: params[:title],
    #   content: params[:content],
    #   progress: params[:progress],
    #   user_id: @current_user.id
    #  )
    if @task.save
      # flash[:notice] = "投稿しました"
      redirect_to @task
    else
      render :top
    end
  end

  def update
  end

  def destroy
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :content, :progress)
  end
end
