class GeneratePdfReport
  def initialize(user)
    @user = user
  end

  def perform
    pdf = Prawn::Document.new

    pdf.text "Detailed info for #{@user.full_name}"
    pdf.move_down 20

    pdf.image @user.avatar.path, width: 200 if @user.avatar.path
    pdf.move_down 20

    pdf.text "Name: #{@user.full_name}"
    pdf.move_down 20

    pdf.text "Email: #{@user.email}"
    pdf.move_down 20

    pdf.text "Bio: #{@user.bio}"
    pdf.move_down 20

    pdf.text "Birth date: #{@user.birth_date}"
    pdf.move_down 20

    pdf.render
  end
end
