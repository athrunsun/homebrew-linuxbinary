class Phpstorm < Formula
    desc "Lightning-smart PHP IDE"
    homepage "http://www.jetbrains.com/phpstorm/"
    version "2016.3.2"
    url "https://download.jetbrains.com/webide/PhpStorm-#{version}.tar.gz"
    sha256 "45b968f5fd0104945f0383a4c0aff7e2dc3e44185e995d19bc52c61aec85d417"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/phpstorm.sh" => "phpstorm"})
    end
end
