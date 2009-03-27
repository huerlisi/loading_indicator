# LoadingIndicator
module LoadingIndicatorHelper
  def loading_indicator_tag(options)
    image_tag "indicator.gif", :style => "display:none;", :id => loading_indicator_id(options), :alt => "loading indicator", :class => "loading-indicator"
  end

  def loading_indicator_id(options)
    if options[:id].nil?
      "#{options[:scaffold_id]}-#{options[:action]}-loading-indicator"
    else
      "#{options[:scaffold_id]}-#{options[:action]}-#{options[:id]}-loading-indicator"
    end
  end
end
