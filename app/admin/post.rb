ActiveAdmin.register Post do
  permit_params :title, :body

  form do |texte|
    texte.inputs "Post" do
      texte.input :title
      texte.input :body, as: :html_editor
    end
    texte.actions
  end
end
