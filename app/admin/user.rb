ActiveAdmin.register User do
  permit_params :email,
    :first_name,
    :last_name,
    :birth_date,
    :bio,
    :avatar
end
