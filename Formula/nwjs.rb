class Nwjs < Formula
    desc "NW.js (previously known as node-webkit) lets you call all Node.js modules directly from DOM and enables a new way of writing applications with all Web technologies. This is the normal version."
    homepage "https://github.com/nwjs/nw.js"
    version "0.36.1"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/nwjs/, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/nwjs/v#{version}/nwjs-v#{version}-linux-x64.tar.gz"
        sha256 "031c0a5418e81dd1e16f861327fbfd2227a6411d4b5508d577963081d17dd889"
    else
        url "https://dl.nwjs.io/v#{version}/nwjs-v#{version}-linux-x64.tar.gz"
        sha256 "031c0a5418e81dd1e16f861327fbfd2227a6411d4b5508d577963081d17dd889"
    end


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/nw")
    end

    def caveats; <<~EOS
        This version contains Chromium 72 + Node 11.9.0.
        Executable linked as "nw".
        EOS
    end
end
