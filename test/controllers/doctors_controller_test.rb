require 'test_helper'

class DoctorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doctor = doctors(:one)
  end

  test "should get index" do
    get doctors_url
    assert_response :success
  end

  test "should get new" do
    get new_doctor_url
    assert_response :success
  end

  test "should create doctor" do
    assert_difference('Doctor.count') do
      post doctors_url, params: { doctor: { access_level: @doctor.access_level, address_line1: @doctor.address_line1, address_line2: @doctor.address_line2, email: @doctor.email, first_name: @doctor.first_name, mobile_no: @doctor.mobile_no, office_no: @doctor.office_no, password: @doctor.password, qualifications: @doctor.qualifications, surname: @doctor.surname } }
    end

    assert_redirected_to doctor_url(Doctor.last)
  end

  test "should show doctor" do
    get doctor_url(@doctor)
    assert_response :success
  end

  test "should get edit" do
    get edit_doctor_url(@doctor)
    assert_response :success
  end

  test "should update doctor" do
    patch doctor_url(@doctor), params: { doctor: { access_level: @doctor.access_level, address_line1: @doctor.address_line1, address_line2: @doctor.address_line2, email: @doctor.email, first_name: @doctor.first_name, mobile_no: @doctor.mobile_no, office_no: @doctor.office_no, password: @doctor.password, qualifications: @doctor.qualifications, surname: @doctor.surname } }
    assert_redirected_to doctor_url(@doctor)
  end

  test "should destroy doctor" do
    assert_difference('Doctor.count', -1) do
      delete doctor_url(@doctor)
    end

    assert_redirected_to doctors_url
  end
end
