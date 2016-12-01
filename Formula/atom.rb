class Atom < Formula
    desc "A hackable text editor for the 21st Century."
    homepage "https://atom.io/"
    version "1.12.6"
    
    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/atom/, use this option if you're in mainland China for a faster downloading speed."
    
    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/atom/#{version}/atom-amd64.tar.gz"
    else
        url "https://github.com/atom/atom/releases/download/v#{version}/atom-amd64.tar.gz"
    end

    sha256 "2fcf0d2392b2ef034366bebcd45a96762759b16d62dca1c44a661979742d2283"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/atom" => "atom"})
    end
end
