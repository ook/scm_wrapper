require 'test/unit'
require 'lib/scm_wrapper/svn_adapter'

class TestSvnAdapter < Test::Unit::TestCase
  REDMINE_REPO = 'http://redmine.rubyforge.org/svn/trunk'

  def setup
    @s = ScmWrapper::SvnAdapter.new
    @s.url = REDMINE_REPO
  end

  def test_log
    r = @s.log(2000, 2005)
    assert_equal 6, r.size
  end
end
