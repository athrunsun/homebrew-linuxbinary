class Atom < Formula
    desc "A hackable text editor for the 21st Century."
    homepage "https://atom.io/"
    version "1.12.4"
    
    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/atom/, use this option if you're in mainland China for a faster downloading speed."
    
    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/atom/1.12.4/atom-amd64.tar.gz"
    else
        url "https://github.com/atom/atom/releases/download/v1.12.4/atom-amd64.tar.gz"
    end

    sha256 "270f78f8ddb2de7914d21c01b65cf3088e155f6bbbf591aa3d872c48b69b6f86"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/atom" => "atom"})
    end
end
