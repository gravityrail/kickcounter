module ApplicationHelper
  def pretty_date(date)
    date.strftime("%a, %b %e at %l:%M %p")
  end
end
