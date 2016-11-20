class NodeBinary < Formula
    desc "Platform built on the V8 JavaScript runtime to build network applications, binaries installation."
    homepage "https://nodejs.org/"
    version "7.1.0"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/node/, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "taobao-mirror"
            url "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-linux-x64.tar.xz"
        else
            url "https://nodejs.org/dist/v#{version}/node-v#{version}-linux-x64.tar.xz"
        end

        sha256 "312f24d410e60f805db927d31d3b4547f69f88f4b2176c2eeca2f042f33624ce"
    else
        if build.with? "taobao-mirror"
            url "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-linux-x86.tar.xz"
        else
            url "https://nodejs.org/dist/v#{version}/node-v#{version}-linux-x86.tar.xz"
        end

        sha256 "310252fc6295a387e3172efad2efebbd9e32b3eba137d2ee314cbd7f3238e110"
    end

    bottle :unneeded
    conflicts_with "node"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
