class DbeaverCe < Formula
    desc "Free universal database tool and SQL client."
    homepage "https://github.com/dbeaver/dbeaver"
    version "5.2.5"

    if MacOS.prefer_64_bit?
        url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-linux.gtk.x86_64.tar.gz"
        sha256 "b581a8348d587577f58671ff6cf467a83114a2c3f03412474f11e625b07c4f76"
    else
        url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-linux.gtk.x86.tar.gz"
        sha256 "fb1a7a09a3e87df8042f395fe415ae966460bc8e94af3aa3cd5a6d38fe72808c"
    end

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
