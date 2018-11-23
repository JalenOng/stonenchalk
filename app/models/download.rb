require 'render_anywhere'
class Download
  include RenderAnywhere

  def initialize
    @results = Result.arrange_by_month
  end

  def to_pdf
    kit = PDFKit.new(as_html)
    kit.to_file("tmp/report.pdf")
  end

  def filename
    "S&C #{Time.now.strftime('%v %H:%M:%S').to_s}.pdf"
  end
  
  private

  attr_reader :results

  def as_html
    render template: "results/pdf.html.erb",
    layout: "report_pdf",
    locals: { results: @results }
  end
end
