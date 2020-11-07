class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    # ログイン時のパス
    def after_sign_in_path_for(resource)
      root_path(resource)
    end

    #ログアウト時のパス
    def after_sign_out_path_for(resource)
      root_path
    end

    # 新規登録の保存機能
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys: [:name, :email])

  		devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
    end
end
