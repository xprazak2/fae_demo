class HomePage < Fae::StaticPage

  @slug = 'home'

  # required to set the has_one associations, Fae::StaticPage will build these associations dynamically
  def self.fae_fields
    {
      main_title: { type: Fae::TextField, languages: Fae.languages.keys },
      subtitle: { type: Fae::TextField, languages: Fae.languages.keys }
    }
  end
end
