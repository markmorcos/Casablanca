module ApplicationHelper
  def selected(page)
    page == controller_name ? "selected" : nil
  end
  
  def active(page)
    page == controller_name ? "active" : ""
  end
end
