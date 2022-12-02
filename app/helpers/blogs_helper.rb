# frozen_string_literal: true

module BlogsHelper
  def format_content(blog)
    # ここでhtml.safeが使われているのが原因らしい。
    # こちらをそのままの状態で、viewのほうにsanitizeメソッドを使ってみる。
    blog.content.gsub("\n", '<br>').html_safe # rubocop:disable Rails/OutputSafety
  end
end
