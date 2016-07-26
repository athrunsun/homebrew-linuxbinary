class Phpstorm < Formula
    desc "Lightning-smart PHP IDE"
    homepage "http://www.jetbrains.com/phpstorm/"
    version "2016.2"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version}.tar.gz"
    sha256 "2cba44d6106b82e9acac222683bbd2528a31b3311948aad9fdfff608c321eaa2"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/phpstorm.sh" => "phpstorm"})
    end
end