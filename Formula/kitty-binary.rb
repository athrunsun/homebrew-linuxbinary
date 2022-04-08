class KittyBinary < Formula
    desc "A cross-platform, fast, feature full, GPU based terminal emulator"
    homepage "https://github.com/kovidgoyal/kitty"
    version "0.24.4"

    url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}-x86_64.txz"
    sha256 "70ac4f0c22fc39b4c8e8bb50054cd37638aa48f0fdeaae8016a864693fb71663"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/kitty")
    end

    def caveats; <<~EOS
        Executable is linked as "kitty".
        EOS
    end
end
