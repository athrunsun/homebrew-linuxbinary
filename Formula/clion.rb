class Clion < Formula
    desc "A cross-platform IDE for C and C++"
    homepage "http://www.jetbrains.com/clion/"
    version "2017.1.3"
    url "https://download.jetbrains.com/cpp/CLion-#{version}.tar.gz"
    sha256 "efb80d5c66db367b6d576923850c56dbb0054f44e0370a274ef37ae2d69ab710"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/clion.sh" => "clion")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "clion".
        EOS
    end
end
