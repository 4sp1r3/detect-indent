# config/initializers/i18n.rb

module I18n

  def self.name_for_locale(locale=nil)
    locale = I18n.locale || I18n.default_locale if locale.nil?
    I18n.backend.translate(locale, 'i18n.language.name')
  rescue I18n::MissingTranslationData
    locale.to_s
  end

end

# E.g.:
#   I18n.name_for_locale(:en)  # => "English"