require 'lib/scm_wrapper/scm_wrapper'

require 'svn/core'
require 'svn/client'

require 'ostruct'

module ScmWrapper
  class SvnAdapter < ScmWrapper
    @@scm = "Subversion"

    def log(start_rev, end_rev = 'HEAD')
      return nil if !url

      logs = []
      ctx = Svn::Client::Context.new()
      ctx.log(self.url, start_rev, end_rev, 0, nil, true) do |changed_paths, rev, author, date, message|
        s = OpenStruct.new()
        s.message = message
        s.author = author
        s.changed_paths = changed_paths
        s.date = date
        s.rev = rev
        logs << s
      end
      logs
    end
  end
end
