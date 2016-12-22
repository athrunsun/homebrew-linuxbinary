class NodeBinaryLts < Formula
    desc "Platform built on the V8 JavaScript runtime to build network applications, binaries installation. This is the LTS version and is recommended for most users."
    homepage "https://nodejs.org/"
    version "6.9.2"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/node/, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "taobao-mirror"
            url "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-linux-x64.tar.xz"
        else
            url "https://nodejs.org/dist/v#{version}/node-v#{version}-linux-x64.tar.xz"
        end

        sha256 "da766edda11cc38eefb1ce29683f248f40c997c0ee2e06903b01429b4c94b71a"
    else
        if build.with? "taobao-mirror"
            url "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-linux-x86.tar.xz"
        else
            url "https://nodejs.org/dist/v#{version}/node-v#{version}-linux-x86.tar.xz"
        end

        sha256 "9dae6ddbafcefd271c3df6e01633422dc7495479269fb1358e4c540929ef8835"
    end

    bottle :unneeded
    conflicts_with "node", "node-binary"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
