class LightTable < Formula
    desc "The Light Table IDE, the next generation code editor."
    homepage "http://lighttable.com/"
    version "0.8.1"

    url "https://github.com/LightTable/LightTable/releases/download/0.8.1/lighttable-0.8.1-linux.tar.gz"
    sha256 "fb96cc29fc22a96380c894b4eaa6397be05e653ccab7e33277c341d78b38d219"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/light")
    end
end
