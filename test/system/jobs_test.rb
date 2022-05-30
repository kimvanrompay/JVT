require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  setup do
    @job = jobs(:one)
  end

  test "visiting the index" do
    visit jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "should create job" do
    visit jobs_url
    click_on "New job"

    fill_in "A1", with: @job.a1
    fill_in "A2", with: @job.a2
    fill_in "A3", with: @job.a3
    fill_in "Bedrijf", with: @job.bedrijf
    fill_in "Content", with: @job.content
    fill_in "Ervaring", with: @job.ervaring
    fill_in "F1", with: @job.f1
    fill_in "F2", with: @job.f2
    fill_in "F3", with: @job.f3
    fill_in "Functie", with: @job.functie
    fill_in "H1", with: @job.h1
    fill_in "Keywords", with: @job.keywords
    fill_in "Link", with: @job.link
    fill_in "M1", with: @job.m1
    fill_in "M2", with: @job.m2
    fill_in "M3", with: @job.m3
    fill_in "Opleiding", with: @job.opleiding
    fill_in "P1", with: @job.p1
    fill_in "P2", with: @job.p2
    fill_in "P3", with: @job.p3
    fill_in "Postcode", with: @job.postcode
    fill_in "Q1", with: @job.q1
    fill_in "Q2", with: @job.q2
    fill_in "Q3", with: @job.q3
    fill_in "Sector", with: @job.sector
    fill_in "Stad", with: @job.stad
    fill_in "Subh1", with: @job.subh1
    fill_in "Talen", with: @job.talen
    fill_in "Titel", with: @job.titel
    fill_in "Utm", with: @job.utm
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "should update Job" do
    visit job_url(@job)
    click_on "Edit this job", match: :first

    fill_in "A1", with: @job.a1
    fill_in "A2", with: @job.a2
    fill_in "A3", with: @job.a3
    fill_in "Bedrijf", with: @job.bedrijf
    fill_in "Content", with: @job.content
    fill_in "Ervaring", with: @job.ervaring
    fill_in "F1", with: @job.f1
    fill_in "F2", with: @job.f2
    fill_in "F3", with: @job.f3
    fill_in "Functie", with: @job.functie
    fill_in "H1", with: @job.h1
    fill_in "Keywords", with: @job.keywords
    fill_in "Link", with: @job.link
    fill_in "M1", with: @job.m1
    fill_in "M2", with: @job.m2
    fill_in "M3", with: @job.m3
    fill_in "Opleiding", with: @job.opleiding
    fill_in "P1", with: @job.p1
    fill_in "P2", with: @job.p2
    fill_in "P3", with: @job.p3
    fill_in "Postcode", with: @job.postcode
    fill_in "Q1", with: @job.q1
    fill_in "Q2", with: @job.q2
    fill_in "Q3", with: @job.q3
    fill_in "Sector", with: @job.sector
    fill_in "Stad", with: @job.stad
    fill_in "Subh1", with: @job.subh1
    fill_in "Talen", with: @job.talen
    fill_in "Titel", with: @job.titel
    fill_in "Utm", with: @job.utm
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "should destroy Job" do
    visit job_url(@job)
    click_on "Destroy this job", match: :first

    assert_text "Job was successfully destroyed"
  end
end
