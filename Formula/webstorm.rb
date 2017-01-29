class Webstorm < Formula
    desc "The smartest JavaScript IDE."
    homepage "http://www.jetbrains.com/webstorm/"
    version "2016.3.2"
    url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.tar.gz"
    sha256 "762bb8e5147f05e695fd3be70dea7cc816fca396b8510159b2884810da9673c0"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/webstorm.sh" => "webstorm"})
    end
end
