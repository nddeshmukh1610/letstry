require 'test_helper'

class ReferralsControllerTest < ActionController::TestCase
  setup do
    @referral = referrals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referrals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referral" do
    assert_difference('Referral.count') do
      post :create, referral: { attachment: @referral.attachment, company: @referral.company, comurl: @referral.comurl, contactemail: @referral.contactemail, contactno: @referral.contactno, currsalary: @referral.currsalary, designation: @referral.designation, exp: @referral.exp, expsalary: @referral.expsalary, fname: @referral.fname, gender_id: @referral.gender_id, jobid: @referral.jobid, jtype_id: @referral.jtype_id, lname: @referral.lname, location_id: @referral.location_id, mode_id: @referral.mode_id, nperiod: @referral.nperiod, resume: @referral.resume }
    end

    assert_redirected_to referral_path(assigns(:referral))
  end

  test "should show referral" do
    get :show, id: @referral
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referral
    assert_response :success
  end

  test "should update referral" do
    patch :update, id: @referral, referral: { attachment: @referral.attachment, company: @referral.company, comurl: @referral.comurl, contactemail: @referral.contactemail, contactno: @referral.contactno, currsalary: @referral.currsalary, designation: @referral.designation, exp: @referral.exp, expsalary: @referral.expsalary, fname: @referral.fname, gender_id: @referral.gender_id, jobid: @referral.jobid, jtype_id: @referral.jtype_id, lname: @referral.lname, location_id: @referral.location_id, mode_id: @referral.mode_id, nperiod: @referral.nperiod, resume: @referral.resume }
    assert_redirected_to referral_path(assigns(:referral))
  end

  test "should destroy referral" do
    assert_difference('Referral.count', -1) do
      delete :destroy, id: @referral
    end

    assert_redirected_to referrals_path
  end
end
