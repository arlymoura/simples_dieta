module ApplicationHelper
  def current_class?(test_path)
    return 'menu-list-active' if request.path.include?(test_path)
    'menu-list-inactive'
  end
end
