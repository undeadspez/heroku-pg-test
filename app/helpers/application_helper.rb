module ApplicationHelper

  def full_title (title)
    if title
      "Heroku pgsql test | #{title}"
    else
      "Heroku pgsql test"
    end
  end

end
