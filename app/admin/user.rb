ActiveAdmin.register User do
  permit_params :email,
    :first_name,
    :last_name,
    :birth_date,
    :bio,
    :avatar

  action_item only: :show, method: :get do
    link_to 'Generate Report', report_admin_user_path(resource)
  end

  member_action :report do
    UserMailer.admin_report(resource).deliver_later

    redirect_to :back, notice: "PDF report for this user will be sent to your email."
  end
end
