class Clion < Formula
    desc "A cross-platform IDE for C and C++"
    homepage "http://www.jetbrains.com/clion/"
    version "2018.3.4"
    url "https://download.jetbrains.com/cpp/CLion-#{version}.tar.gz"
    sha256 "963fb343272e5903ac7dc944cc64ea9541ab4c150cc4ea796dcb0fb613bff4fd"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/clion.sh" => "clion")
    end

    def caveats; <<~EOS
        Executable is linked as "clion".
        EOS
    end
end
