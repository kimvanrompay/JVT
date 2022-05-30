require "test_helper"

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference("Job.count") do
      post jobs_url, params: { job: { a1: @job.a1, a2: @job.a2, a3: @job.a3, bedrijf: @job.bedrijf, content: @job.content, ervaring: @job.ervaring, f1: @job.f1, f2: @job.f2, f3: @job.f3, functie: @job.functie, h1: @job.h1, keywords: @job.keywords, link: @job.link, m1: @job.m1, m2: @job.m2, m3: @job.m3, opleiding: @job.opleiding, p1: @job.p1, p2: @job.p2, p3: @job.p3, postcode: @job.postcode, q1: @job.q1, q2: @job.q2, q3: @job.q3, sector: @job.sector, stad: @job.stad, subh1: @job.subh1, talen: @job.talen, titel: @job.titel, utm: @job.utm } }
    end

    assert_redirected_to job_url(Job.last)
  end

  test "should show job" do
    get job_url(@job)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(@job)
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { a1: @job.a1, a2: @job.a2, a3: @job.a3, bedrijf: @job.bedrijf, content: @job.content, ervaring: @job.ervaring, f1: @job.f1, f2: @job.f2, f3: @job.f3, functie: @job.functie, h1: @job.h1, keywords: @job.keywords, link: @job.link, m1: @job.m1, m2: @job.m2, m3: @job.m3, opleiding: @job.opleiding, p1: @job.p1, p2: @job.p2, p3: @job.p3, postcode: @job.postcode, q1: @job.q1, q2: @job.q2, q3: @job.q3, sector: @job.sector, stad: @job.stad, subh1: @job.subh1, talen: @job.talen, titel: @job.titel, utm: @job.utm } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy job" do
    assert_difference("Job.count", -1) do
      delete job_url(@job)
    end

    assert_redirected_to jobs_url
  end
end
