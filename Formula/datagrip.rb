class Datagrip < Formula
    desc "Your Swiss Army Knife for Databases and SQL."
    homepage "http://www.jetbrains.com/datagrip/"
    version "2017.1"
    url "https://download.jetbrains.com/datagrip/datagrip-#{version}.tar.gz"
    sha256 "91ee6a1e43d75a45ae51829835e457da85262410d89e617324d0239ba5625dfa"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/datagrip.sh" => "datagrip"})
    end

    def caveats; <<-EOS.undent
        Executable is linked as "datagrip".
        EOS
    end
end
