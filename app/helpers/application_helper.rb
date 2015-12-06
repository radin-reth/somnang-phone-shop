module ApplicationHelper
  def switch_locale(locale, choice=:value)
    km = { locale: 'km', text: 'ខ្មែរ' }
    en = { locale: 'en', text: 'English' }

    (locale || I18n.default_locale).to_s == 'km' ? en : km
  end
end
