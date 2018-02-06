class Oni < Formula
    desc "Modern Modal Editing - powered by Neovim."
    homepage "https://github.com/onivim/oni"
    version "0.2.21"
    url "https://github.com/onivim/oni/releases/download/v#{version}/Oni-#{version}-x64-linux.tar.gz"
    sha256 "ede7c765a76716d500b7eb9a401b631aadb83a23227526108201f4b43ad9c9a3"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/oni" => "oni")
    end

    def caveats; <<~EOS
        Executable is linked as "oni".
        EOS
    end
end
