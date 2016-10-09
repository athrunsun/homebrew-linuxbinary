class NodeBinary < Formula
    desc "Platform built on the V8 JavaScript runtime to build network applications, binaries installation."
    homepage "https://nodejs.org/"
    version "v6.7.0"

    if MacOS.prefer_64_bit?
        url "https://nodejs.org/dist/#{version}/node-#{version}-linux-x64.tar.xz"
        sha256 "09263a844c31933c6f31e576e580faf01d3bbb056efb8713388dc8d09674f8c2"
    else
        url "https://nodejs.org/dist/#{version}/node-#{version}-linux-x86.tar.xz"
        sha256 "e89a77020bd579186adbc46f6a668d3524f980c5fc75f63e1d5b5362423bcebb"
    end

    bottle :unneeded
    conflicts_with "node"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end