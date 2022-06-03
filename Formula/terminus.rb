class Terminus < Formula
    desc "A terminal for a more modern age"
    homepage "https://github.com/Eugeny/terminus"
    version "1.0.0.61"

    url "https://github.com/Eugeny/terminus/releases/download/v1.0.0-alpha.61/terminus-1.0.0-alpha.61-linux.tar.gz"
    sha256 "77af2240afee7f1ed2048a04bb8ddd25b85135662e40660fca4db792886b9974"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/terminus")
    end

    def caveats; <<~EOS
        Executable is linked as "terminus".
        EOS
    end
end
