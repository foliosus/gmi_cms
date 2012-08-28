module ApplicationHelper
  def language_switching_links
    raw((Refinery::I18n.locales.keys - [Globalize.locale]).collect do |key|
          link_to(h(Refinery::I18n.locales[key]), refinery.url_for(:locale => key), class: key)
        end.join(' | '))
  end
end
