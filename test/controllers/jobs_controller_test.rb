require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { category_id: @job.category_id, company: @job.company, comurl: @job.comurl, contactemail: @job.contactemail, contactno: @job.contactno, contactperson: @job.contactperson, description: @job.description, designation: @job.designation, gender_id: @job.gender_id, jtype_id: @job.jtype_id, location_id: @job.location_id, maxexp: @job.maxexp, maxsalary: @job.maxsalary, minexp: @job.minexp, minsalary: @job.minsalary, mode_id: @job.mode_id, nperiod: @job.nperiod, title: @job.title }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { category_id: @job.category_id, company: @job.company, comurl: @job.comurl, contactemail: @job.contactemail, contactno: @job.contactno, contactperson: @job.contactperson, description: @job.description, designation: @job.designation, gender_id: @job.gender_id, jtype_id: @job.jtype_id, location_id: @job.location_id, maxexp: @job.maxexp, maxsalary: @job.maxsalary, minexp: @job.minexp, minsalary: @job.minsalary, mode_id: @job.mode_id, nperiod: @job.nperiod, title: @job.title }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
