require 'test_helper'

class RoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_room_url
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post rooms_url, params: { room: { address: @room.address, area: @room.area, begin_date: @room.begin_date, category: @room.category, delete_status: @room.delete_status, description: @room.description, district: @room.district, entrance: @room.entrance, expired_date: @room.expired_date, front: @room.front, house_direction: @room.house_direction, interior: @room.interior, media: @room.media, number_bedroom: @room.number_bedroom, number_floor: @room.number_floor, number_toilet: @room.number_toilet, post_code: @room.post_code, post_type: @room.post_type, price: @room.price, price_unit: @room.price_unit, project_investor: @room.project_investor, project_name: @room.project_name, project_size: @room.project_size, province: @room.province, seller_address: @room.seller_address, seller_email: @room.seller_email, seller_mobile_phone: @room.seller_mobile_phone, seller_name: @room.seller_name, seller_phone: @room.seller_phone, street: @room.street, title: @room.title, url: @room.url, ward: @room.ward } }
    end

    assert_redirected_to room_url(Room.last)
  end

  test "should show room" do
    get room_url(@room)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_url(@room)
    assert_response :success
  end

  test "should update room" do
    patch room_url(@room), params: { room: { address: @room.address, area: @room.area, begin_date: @room.begin_date, category: @room.category, delete_status: @room.delete_status, description: @room.description, district: @room.district, entrance: @room.entrance, expired_date: @room.expired_date, front: @room.front, house_direction: @room.house_direction, interior: @room.interior, media: @room.media, number_bedroom: @room.number_bedroom, number_floor: @room.number_floor, number_toilet: @room.number_toilet, post_code: @room.post_code, post_type: @room.post_type, price: @room.price, price_unit: @room.price_unit, project_investor: @room.project_investor, project_name: @room.project_name, project_size: @room.project_size, province: @room.province, seller_address: @room.seller_address, seller_email: @room.seller_email, seller_mobile_phone: @room.seller_mobile_phone, seller_name: @room.seller_name, seller_phone: @room.seller_phone, street: @room.street, title: @room.title, url: @room.url, ward: @room.ward } }
    assert_redirected_to room_url(@room)
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete room_url(@room)
    end

    assert_redirected_to rooms_url
  end
end
