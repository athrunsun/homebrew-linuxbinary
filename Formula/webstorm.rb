class Webstorm < Formula
    desc "The smartest JavaScript IDE."
    homepage "http://www.jetbrains.com/webstorm/"
    version "11.0.3"
    url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.tar.gz"
    sha256 "387d2cf7fdd4ba4e1fb4bb223071d0bac6f5c254e014311cbf62b188448ba76b"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/webstorm.sh" => "webstorm"})
    end
end