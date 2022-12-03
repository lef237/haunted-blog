# frozen_string_literal: true

module BlogsHelper
  def format_content(blog)
    content = html_escape(blog.content).gsub("\n", '<br>')
    sanitize(content)
  end
end
