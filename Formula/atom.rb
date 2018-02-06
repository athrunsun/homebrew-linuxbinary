class Atom < Formula
    desc "A hackable text editor for the 21st Century."
    homepage "https://github.com/atom/atom"
    version "1.23.3"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/atom/, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/atom/#{version}/atom-amd64.tar.gz"
    else
        url "https://github.com/atom/atom/releases/download/v#{version}/atom-amd64.tar.gz"
    end

    sha256 "2d22c5dd1fc5a991fd7a4ca6c4d64a9df8204b430af1a4e5b9227b5423068f75"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/atom" => "atom")
    end

    def caveats; <<~EOS
        Executable is linked as "atom".
        EOS
    end
end
