class KomodoEdit < Formula
    desc "A fast and free multi-language code editor. Written in JS, Python, C++ and based on the Mozilla platform."
    homepage "https://github.com/Komodo/KomodoEdit"
    version "11.1.0"

    url "https://downloads.activestate.com/Komodo/releases/#{version}/Komodo-Edit-#{version}-18196-linux-x86_64.tar.gz"
    sha256 "f68a87a0d8c486a749c97de2d64fc07a633e7b32d13b685b18824caae9908bd0"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/INSTALLDIR/bin/komodo" => "komodo")
    end

    def caveats; <<~EOS
        Executable linked as "komodo".
        EOS
    end
end
