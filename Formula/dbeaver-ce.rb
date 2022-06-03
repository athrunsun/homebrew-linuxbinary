class DbeaverCe < Formula
    desc "Free universal database tool and SQL client."
    homepage "https://github.com/dbeaver/dbeaver"
    version "6.0.0"

    url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-linux.gtk.x86_64.tar.gz"
    sha256 "b9b722ab0c5ac6099092c43a04426e84bd9b857e646a1f7fe987fb09efdeffec"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbeaver" => "dbeaverc")
    end

    def caveats; <<~EOS
        Executable linked as "dbeaverc".
        EOS
    end
end
