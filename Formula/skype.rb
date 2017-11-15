class Skype < Formula
    desc "Free calls to friends and family."
    homepage "http://www.skype.com/"
    version "4.3.0.37"

    url "http://download.skype.com/linux/skype-#{version}.tar.bz2"
    sha256 "8c99dc3978a588fb13303df7c8134379fb55b8dd460efefbc79ae594269b892d"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/skype")
    end
end
