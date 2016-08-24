class Webstorm < Formula
    desc "The smartest JavaScript IDE."
    homepage "http://www.jetbrains.com/webstorm/"
    version "2016.2.2"
    url "https://download.jetbrains.com/webstorm/WebStorm-#{version}.tar.gz"
    sha256 "06af83ee181b37ae0a1108b4b88ae9a8d10f153796f3c59c879a4ead24dc4e58"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/webstorm.sh" => "webstorm"})
    end
end
