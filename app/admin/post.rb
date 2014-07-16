ActiveAdmin.register Post do
  permit_params :title, :body, :video

  index do
    selectable_column
    column :title
    column :updated_at
    actions
  end
  
  form do |texte|
    texte.inputs "Post" do
      texte.input :title
      texte.input :video
      texte.input :body, as: :html_editor
    end
    texte.actions
  end
end
