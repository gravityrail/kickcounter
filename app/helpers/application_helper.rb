module ApplicationHelper
  def pretty_date(date)
    date.strftime("%a, %b %e at %l:%M %p")
  end

  def nav_link_to(title, url, highlight)
    content_tag :li, class: (highlight.call ? "active" : nil) do
      link_to title, url
    end
  end
end
