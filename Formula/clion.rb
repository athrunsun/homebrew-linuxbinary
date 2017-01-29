class Clion < Formula
    desc "A cross-platform IDE for C and C++"
    homepage "http://www.jetbrains.com/clion/"
    version "2016.3.2"
    url "https://download.jetbrains.com/cpp/CLion-#{version}.tar.gz"
    sha256 "76c1c6fdf9bb1a6451871d717e0b1da8d4aa8f25f5f48743d4a1bdaffd90f679"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/clion.sh" => "clion"})
    end
end
