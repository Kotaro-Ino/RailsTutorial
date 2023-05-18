require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  require 'test_helper'

  class UsersEditTest < ActionDispatch::IntegrationTest
  
    def setup
      @user = users(:michael)
    end
  
    test "unsuccessful edit" do
      log_in_as(@user)
      get edit_user_path(@user)
      assert_template 'users/edit'
      patch user_path(@user), params: { user: { name:  "",
                                                email: "foo@invalid",
                                                password:              "foo",
                                                password_confirmation: "bar" } }
      assert_template 'users/edit'
    end

    test "successful edit with friendly forwarding" do
      get edit_user_path(@user)
      log_in_as(@user)
      assert_redirected_to edit_user_url(@user)
      name  = "Foo Bar"
      email = "foo@bar.com"
      patch user_path(@user), params: { user: { name:  name,
                                                email: email,
                                                password:              "",
                                                password_confirmation: "" } }
      assert_not flash.empty? #有ればtrue,無ければfalse。今回は正しく入力されてるのでfalseになる
      assert_redirected_to @user
      @user.reload
      assert_equal name,  @user.name
      assert_equal email, @user.email
    end
  end
end
