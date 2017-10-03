class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "hello, world!"
  end

  def after_sign_in_path_for(resource)
  departments_path
end

def after_sign_out_path_for(resource_or_scope)
  root_path
end

end
