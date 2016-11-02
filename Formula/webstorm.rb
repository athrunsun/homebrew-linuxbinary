class Webstorm < Formula
    desc "The smartest JavaScript IDE."
    homepage "http://www.jetbrains.com/webstorm/"
    version "2016.2.4"
    url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.tar.gz"
    sha256 "6fe7fe6591260a95a588038838bb1d44e72175118b7a848d588d2ddb09a1c1c0"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/webstorm.sh" => "webstorm"})
    end
end
