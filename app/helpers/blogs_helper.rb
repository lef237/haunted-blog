# frozen_string_literal: true

module BlogsHelper
  def format_content(blog)
    # ここでエスケープした後、\nをgsubでbrタグだけを作成する（タグの文字自体は残る）
    content = html_escape(blog.content).gsub("\n", '<br>')
    # そのままではrailsの機能で<br>もエスケープされてしまうので、<br>だけ許可する
    # content.html_safeでも問題ないが、念のためsanitizeで処理する。
    sanitize(content, tags: %w(br))
  end
end
