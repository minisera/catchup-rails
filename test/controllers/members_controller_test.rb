require "test_helper"

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group = groups(:one)
  end

  test 'メンバー一覧を取得する' do
    post '/groups/1/members', params: { member: { name: '花田太郎' } }
    assert_response :created
  end
end
