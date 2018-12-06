class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reporting.subject
  #
  def reporting(results, project_outcomes, kpis, recipient_commitments, milestones_1, milestones_2, milestones_3, jobs, events, amount, occupancy)
    @greeting = "Hi"
    @results = results
    @project_outcomes = project_outcomes
    @kpis = kpis
    @recipient_commitments = recipient_commitments
    @milestones_1 = milestones_1
    @milestones_2 = milestones_2
    @milestones_3 = milestones_3 
    @jobs = jobs
    @events = events 
    @amount = amount
    @occupancy = occupancy
    # attachments["KPI_Stone&Chalk.pdf"] = WickedPdf.new.pdf_from_string(
    #   render_to_string(pdf: 'KPI' + Time.now.strftime('%v %H:%M:%S').to_s, template: "results/pdf.html.erb")
 
    mail to: ENV["MAILTO"], subject: "STONE AND CHALK KPI UPDATE"
  end
end
