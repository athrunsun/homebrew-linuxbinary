class Webstorm < Formula
    desc "The smartest JavaScript IDE."
    homepage "http://www.jetbrains.com/webstorm/"
    version "2016.2.2"
    url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.tar.gz"
    sha256 "a3453ce89f6dfc55de1723b3e6119a71771a20a8c4ca4da60dcb1fd91e3700d9"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/webstorm.sh" => "webstorm"})
    end
end
