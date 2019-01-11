class KittyBinary < Formula
    desc "A cross-platform, fast, feature full, GPU based terminal emulator"
    homepage "https://github.com/kovidgoyal/kitty"
    version "0.12.3"

    url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}-x86_64.txz"
    sha256 "d773c7c8b89cdb1e7f21edc8cb91f1b045b3ba2c8b5c135c8f88ce06957f4813"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/kitty")
    end

    def caveats; <<~EOS
        Executable is linked as "kitty".
        EOS
    end
end
