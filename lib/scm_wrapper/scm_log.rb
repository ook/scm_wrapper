module ScmWrapper
  class ScmLog
    def initialize(changed_paths, rev, author, date, message)
      @changed_paths = changed_paths
      @rev           = rev
      @author        = author
      @date          = date
      @message       = message
    end

    def changed_paths=(cp)
      nil # TODO not implemented yet, waiting for seeing how git handle that
    end
    def changed_paths
      @changed_paths
    end
    def rev
      @rev
    end
    def rev=(rev)
      @rev = rev
    end
    def author
      @author
    end
    def author=(author)
      @author = author
    end
    def date
      @date
    end
    def date=(date)
      @date = date
    end
    def message
      @message
    end
    def message=(message)
      @message = message
    end
  end
end
