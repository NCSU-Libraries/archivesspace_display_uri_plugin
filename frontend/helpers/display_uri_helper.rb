require 'mixed_content_parser'

module ApplicationHelper

  def display_audit_info(hash, opts = {})
    fmt = opts[:format] || 'wide'
    html = "<div class='audit-display-#{fmt}'><small>"
    if hash['create_time'] and hash['user_mtime']
      if fmt == 'wide'
        html << "<strong>#{I18n.t("search_results.created")} #{hash['created_by']}</strong>"
        html << " #{Time.parse(hash['create_time']).getlocal}"
        html << ' | '
        html << "<strong>#{I18n.t("search_results.modified")} #{hash['last_modified_by']}</strong>"
        html << " #{Time.parse(hash['user_mtime']).getlocal}"
        html << ' | '
        html << "<strong>URI:</strong> "
        html << hash['uri']
      else
        html << "<dl>"
        html << "<dt>#{I18n.t("search_results.created")} #{hash['created_by']}</dt>"
        html << "<dd>#{Time.parse(hash['create_time']).getlocal}</dd>"
        html << "<dt>#{I18n.t("search_results.modified")} #{hash['last_modified_by']}</dt>"
        html << "<dd>#{Time.parse(hash['user_mtime']).getlocal}</dd>"
        html << "</dl>"
      end
    end
    html << "</small></div><div class='clearfix'></div>"
    html.html_safe
  end

end
