# frozen_string_literal: true

Trestle.resource(:articles) do
  active_storage_fields do
    [:cover_picture]
  end

  menu do
    group :blog_management, priority: :first do
      item :articles, icon: 'fa fa-file-text-o'
    end
  end

  scopes do
    scope :all, default: true
    scope :published
    scope :drafts
  end

  table do
    column :id
    column :title
    column :published_at
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do
    tab :post do
      active_storage_field :cover_picture
      row do
        col { text_field :title }
        col { datetime_field :published_at }
      end

      editor :content
    end
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
