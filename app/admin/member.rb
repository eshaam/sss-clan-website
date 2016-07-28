ActiveAdmin.register Member do

  actions :all, except: [:destroy]

  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end

  index do
    column :psn_gamertag
    column :email
    column :last_sign_in_at
    actions defaults: true
  end



  form do |f|
    f.inputs "Member Details" do
        f.input :psn_gamertag
        f.input :email
        if f.object.new_record?
            f.input :password
            f.input :password_confirmation
        end
    end
    f.button :Submit
  end

  permit_params :psn_gamertag, :email,:password, :password_confirmation



end
