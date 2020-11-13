class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    # ログイン時のパス
    def after_sign_in_path_for(resource)
      root_path(resource)
    end

    #ログアウト時のパス
    def after_sign_out_path_for(resource)
      new_user_session_path
    end

    # 新規登録の保存機能
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys: [:name, :email])

  		devise_parameter_sanitizer.permit(:sign_in, keys: [:email])

      # :inviteと:accept_invitationに:usernameを許可する
      devise_parameter_sanitizer.permit(:accept_invitation, keys: [:name]) #招待を承認時用
    end

  private

    def set_task
      @task = Task.find(params[:id])
    end

    def set_task_index
      @tasks = Task.all
      @tasks_not = Task.where(progress: "未着手")
      @tasks_commencement = Task.where(progress: "着手中")
      @tasks_completion = Task.where(progress: "完了")
    end
end
