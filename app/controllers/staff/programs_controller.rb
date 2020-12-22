class Staff::ProgramsController < Staff::Base
  def index
    @programs = Program.listing.page(params[:page])
  end
  # .includes(:registrant).includes(:entries).includes(:applicants)

  def show
    @program = Program.listing.find(params[:id])
  end
end
