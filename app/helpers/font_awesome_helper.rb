module FontAwesomeHelper
  def fa_icon icon, options={}
    options[:class] = options[:class].present? ? "glyphicon glyphicon-#{icon} #{options[:class]}" : "glyphicon glyphicon-#{icon}"
    content_tag :span, nil, options
  end
end
