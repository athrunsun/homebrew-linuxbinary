class KomodoEdit < Formula
    desc "A fast and free multi-language code editor. Written in JS, Python, C++ and based on the Mozilla platform."
    homepage "https://github.com/Komodo/KomodoEdit"
    version "11.1.0"

    if MacOS.prefer_64_bit?
        url "https://downloads.activestate.com/Komodo/releases/#{version}/Komodo-Edit-#{version}-18196-linux-x86_64.tar.gz"
        sha256 "f68a87a0d8c486a749c97de2d64fc07a633e7b32d13b685b18824caae9908bd0"
    else
        url "https://downloads.activestate.com/Komodo/releases/#{version}/Komodo-Edit-#{version}-18196-linux-x86.tar.gz"
        sha256 "3f3dcbb145c3bbf4df354049a014876a983d8fd2651283741982637a5903b8a4"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/INSTALLDIR/bin/komodo" => "komodo")
    end

    def caveats; <<~EOS
        Executable linked as "komodo".
        EOS
    end
end
