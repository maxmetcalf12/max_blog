# frozen_string_literal: true

Trestle.resource(:code_tutorials) do
  menu do
    group :blog_management, priority: :first do
      item :code_tutorials, icon: 'fa fa-code'
    end
  end

  scopes do
    scope :all, default: true
    scope :published
    scope :drafts
  end

  table do
    column :id
    column :name
    column :path
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do
    row do
      col { text_field :name }
      col { datetime_field :published_at }
      col { text_field :path }
    end

    text_field :preview

    editor :content
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:article).permit(:name, ...)
  # end
end
