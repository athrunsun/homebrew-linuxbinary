class Atom < Formula
    desc "A hackable text editor for the 21st Century."
    homepage "https://github.com/atom/atom"
    version "1.41.0"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/atom/, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/atom/#{version}/atom-amd64.tar.gz"
    else
        url "https://github.com/atom/atom/releases/download/v#{version}/atom-amd64.tar.gz"
    end

    sha256 "7f08e95d5b26e8608f351f725a09f8cb8b43935d111c32ea7ea5f92915ee3f9e"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/atom" => "atom")
        bin.install_symlink("#{libexec}/resources/app/apm/bin/apm" => "apm")
    end

    def caveats; <<~EOS
        Executable is linked as "atom" and "apm".
        EOS
    end
end
