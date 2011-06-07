require 'test_helper'

class UseragentsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Useragent.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Useragent.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Useragent.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to useragent_url(assigns(:useragent))
  end

  def test_edit
    get :edit, :id => Useragent.first
    assert_template 'edit'
  end

  def test_update_invalid
    Useragent.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Useragent.first
    assert_template 'edit'
  end

  def test_update_valid
    Useragent.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Useragent.first
    assert_redirected_to useragent_url(assigns(:useragent))
  end

  def test_destroy
    useragent = Useragent.first
    delete :destroy, :id => useragent
    assert_redirected_to useragents_url
    assert !Useragent.exists?(useragent.id)
  end
end
