class PackerBinary < Formula
    desc "Packer is a tool for creating machine and container images for multiple platforms from a single source configuration."
    homepage "https://www.packer.io/"
    version "0.10.1"

    if MacOS.prefer_64_bit?
        url "https://releases.hashicorp.com/packer/#{version}/packer_#{version}_linux_amd64.zip"
        sha256 "7d51fc5db19d02bbf32278a8116830fae33a3f9bd4440a58d23ad7c863e92e28"
    else
        url "https://releases.hashicorp.com/packer/#{version}/packer_#{version}_linux_386.zip"
        sha256 "9146b94115684a9725b2c1b5e5fbc412f30caaca136dbad4028423d6d6d3b6e4"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/packer" => "packer"})
    end
end