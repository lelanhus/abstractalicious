class SubmissionsController < InheritedResources::Base
  before_filter :authenticate_user!
  
  def pdf_submission
    @submission = Submission.find(params[:id])
    pdf = render_to_string(:action => 'pdf', :layout => false)
    pdf = PDFKit.new(pdf)
    send_data(pdf.to_pdf, :filename => @submission.title)
  end
  
  protected
  
  def begin_of_association_chain
    current_user
  end

end
