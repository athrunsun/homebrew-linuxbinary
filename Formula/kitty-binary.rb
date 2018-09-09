class KittyBinary < Formula
    desc "A cross-platform, fast, feature full, GPU based terminal emulator"
    homepage "https://github.com/kovidgoyal/kitty"
    version "0.12.1"

    if MacOS.prefer_64_bit?
        url "https://github.com/kovidgoyal/kitty/releases/download/v0.12.1/kitty-0.12.1-x86_64.txz"
        sha256 "cff761ea72a77e93b774604adbc22136ee4e7145f2a3b70b68901ae6aaf73d62"
    else
        url "https://github.com/kovidgoyal/kitty/releases/download/v0.12.1/kitty-0.12.1-i686.txz"
        sha256 "378ab690cd14eb50cbb90179a86e80529e82e28d05e2aec715803985e5cb220d"
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
