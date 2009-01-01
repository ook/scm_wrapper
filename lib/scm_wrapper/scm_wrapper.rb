module ScmWrapper
  class ScmWrapper
    @@scm = 'AbstractWrapper: you failed'

    @url = nil

    def url=(url)
      @url ||= url
    end

    def url
      @url
    end

    def log(start_rev, end_rev)
    end

    def scm
      @@scm
    end
  end
end
