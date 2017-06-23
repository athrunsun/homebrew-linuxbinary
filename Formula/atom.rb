class Atom < Formula
    desc "A hackable text editor for the 21st Century."
    homepage "https://atom.io/"
    version "1.17.2"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/atom/, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/atom/#{version}/atom-amd64.tar.gz"
    else
        url "https://github.com/atom/atom/releases/download/v#{version}/atom-amd64.tar.gz"
    end

    sha256 "5b57470d9fbabb0ba8215a4e18b0a42a2cb5290dc6a4cd19fffab3f0cfa0e9a5"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/atom" => "atom")
    end
end
