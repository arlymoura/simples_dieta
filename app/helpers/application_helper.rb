module ApplicationHelper
  def current_class?(test_path)
    return 'menu-list-active' if request.path.include?(test_path)
    'menu-list-inactive'
  end
  
  def flash_class(level)
    case level
      when :notice then "is-info"
      when :success then "is-success"
      when :error then "is-error"
      when :alert then "is-warning"
      else
        "is-info"
    end
  end
end
