class NodeBinary < Formula
    desc "Platform built on the V8 JavaScript runtime to build network applications, binaries installation."
    homepage "https://nodejs.org/"
    version "v5.6.0"

    if MacOS.prefer_64_bit?
        url "https://nodejs.org/dist/#{version}/node-#{version}-linux-x64.tar.xz"
        sha256 "d72e4e264c4a9da6a4fe631f376e84d5a9c1fd0a2eea7514f3e4c1736915b394"
    else
        url "https://nodejs.org/dist/#{version}/node-#{version}-linux-x86.tar.xz"
        sha256 "a22fe4ab92958e40fda35ec2bc3a0a10b2c56e1ccbc1a0dea8b642e39725fb71"
    end

    bottle :unneeded
    conflicts_with "node"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end