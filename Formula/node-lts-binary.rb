class NodeLtsBinary < Formula
    desc "Platform built on the V8 JavaScript runtime to build network applications, binaries installation. This is the LTS version and is recommended for most users."
    homepage "https://nodejs.org/"
    version "8.9.0"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/node/, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "taobao-mirror"
            url "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-linux-x64.tar.xz"
        else
            url "https://nodejs.org/dist/v#{version}/node-v#{version}-linux-x64.tar.xz"
        end

        sha256 "e92b91fa473f9ad805a1241907b6f1bd3f8ceac8426a8b4cb05428e62e243bdd"
    else
        if build.with? "taobao-mirror"
            url "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-linux-x86.tar.xz"
        else
            url "https://nodejs.org/dist/v#{version}/node-v#{version}-linux-x86.tar.xz"
        end

        sha256 "7bd958d48222b04f65fbb109334b75bec927ada0a223b6aa64c44c3e5d6d6d2b"
    end

    bottle :unneeded
    conflicts_with "node", "node-binary"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
