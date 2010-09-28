module ApplicationHelper
  # Return a title on a per-page basis.
  def title
    base_title = "Screentele"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{h(@title)}"
    end
  end

  def logo
    image_tag("logo.png", :alt => "Screentele", :class => "round")
  end
end
