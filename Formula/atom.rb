class Atom < Formula
    desc "A hackable text editor for the 21st Century."
    homepage "https://github.com/atom/atom, https://atom.io/"
    version "1.27.2"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/atom/, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/atom/#{version}/atom-amd64.tar.gz"
    else
        url "https://github.com/atom/atom/releases/download/v#{version}/atom-amd64.tar.gz"
    end

    sha256 "1288171ef2f5b11704fbb179e9482e8b98d162d9b43ef865e10abac9528730c2"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/atom" => "atom")
    end

    def caveats; <<~EOS
        Executable is linked as "atom".
        NOTE that this doesn NOT include "apm".
        EOS
    end
end
