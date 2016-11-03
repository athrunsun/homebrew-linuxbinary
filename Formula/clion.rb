class Clion < Formula
    desc "A cross-platform IDE for C and C++"
    homepage "http://www.jetbrains.com/clion/"
    version "2016.2.3"
    url "https://download.jetbrains.com/cpp/CLion-#{version}.tar.gz"
    sha256 "0d2fc6ecec4dfab15ba98021ed3d3e866c2d43e7c27b7e522e0161e76aa78fbd"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/clion.sh" => "clion"})
    end
end
