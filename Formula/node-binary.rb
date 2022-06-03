class NodeBinary < Formula
    desc "Platform built on the V8 JavaScript runtime to build network applications, binaries installation. This is the current version with latest features."
    homepage "https://nodejs.org/"
    version "9.0.0"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/node/, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-linux-x64.tar.xz"
    else
        url "https://nodejs.org/dist/v#{version}/node-v#{version}-linux-x64.tar.xz"
    end

    sha256 "8313d2f6d69dbea4cb860803a156f093041cbe352a843c06f9f05cab1f30e9cc"

    conflicts_with "node", "node-lts-binary"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
