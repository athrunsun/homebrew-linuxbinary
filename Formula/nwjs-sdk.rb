class NwjsSdk < Formula
    desc "NW.js (previously known as node-webkit) lets you call all Node.js modules directly from DOM and enables a new way of writing applications with all Web technologies. This is the SDK version."
    homepage "https://github.com/nwjs/nw.js"
    version "0.36.1"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/nwjs/, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/nwjs/v#{version}/nwjs-sdk-v#{version}-linux-x64.tar.gz"
        sha256 "ab9da4aff7863790c553253b6f15722f00561276c86a2ddae8cd441676a2a390"
    else
        url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-linux-x64.tar.gz"
        sha256 "ab9da4aff7863790c553253b6f15722f00561276c86a2ddae8cd441676a2a390"
    end


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/nw")
        bin.install_symlink("#{libexec}/nwjc")
    end

    def caveats; <<~EOS
        This version contains Chromium 72 + Node 11.9.0.
        Executable linked as "nw", "nwjc".
        EOS
    end
end
