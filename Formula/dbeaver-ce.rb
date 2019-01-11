class DbeaverCe < Formula
    desc "Free universal database tool and SQL client."
    homepage "https://github.com/dbeaver/dbeaver"
    version "5.2.5"

    url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-linux.gtk.x86_64.tar.gz"
    sha256 "b581a8348d587577f58671ff6cf467a83114a2c3f03412474f11e625b07c4f76"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/dbeaver" => "dbeaverc")
    end

    def caveats; <<~EOS
        Executable linked as "dbeaverc".
        EOS
    end
end
