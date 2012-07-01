module ApplicationHelper
  def language_switching_link
    new_lang = Globalize.locale == :en ? :es : :en
    url = if request.original_fullpath.starts_with?("/#{Globalize.locale}")
      request.original_fullpath.sub(/^\/#{Globalize.locale}/, "/#{new_lang}")
    else
      "/#{new_lang}#{request.original_fullpath}"
    end
    link_to Refinery::I18n.locales[new_lang], url
  end
end
