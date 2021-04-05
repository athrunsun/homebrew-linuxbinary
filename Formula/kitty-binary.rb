class KittyBinary < Formula
    desc "A cross-platform, fast, feature full, GPU based terminal emulator"
    homepage "https://github.com/kovidgoyal/kitty"
    version "0.19.3"

    url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}-x86_64.txz"
    sha256 "4af173890f9c6a98a233e5e4c95a1ea53bfa800c43684c379ef79d3adfeb79eb"

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
