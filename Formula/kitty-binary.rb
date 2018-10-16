class KittyBinary < Formula
    desc "A cross-platform, fast, feature full, GPU based terminal emulator"
    homepage "https://github.com/kovidgoyal/kitty"
    version "0.12.3"

    if MacOS.prefer_64_bit?
        url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}-x86_64.txz"
        sha256 "d773c7c8b89cdb1e7f21edc8cb91f1b045b3ba2c8b5c135c8f88ce06957f4813"
    else
        url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}-i686.txz"
        sha256 "ca669da12ab5d359efbf2eeab6649c298148161e21b017dba3c3417557ddb145"
    end

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
