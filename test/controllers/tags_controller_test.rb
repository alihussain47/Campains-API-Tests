require 'test_helper'

class TagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag = tags(:one)
  end

  test "should get index" do
    get tags_url, as: :json, headers: auth_header
    assert_response :success
  end

  test "should create tag" do
    assert_difference('Tag.count') do
      post tags_url, params: { tag: { name: @tag.name, tag_id: @tag.tag_id } }, headers: auth_header, as: :json
    end

    assert_response 201
  end

  test "should show tag" do
    get tag_url(@tag), headers: auth_header, as: :json
    assert_response :success
  end

  test "should update tag" do
    patch tag_url(@tag), params: { tag: { name: @tag.name, tag_id: @tag.tag_id } }, headers: auth_header, as: :json
    assert_response 200
  end

  test "should destroy tag" do
    assert_difference('Tag.count', -1) do
      delete tag_url(@tag), headers: auth_header, as: :json
    end

    assert_response 204
  end
end
