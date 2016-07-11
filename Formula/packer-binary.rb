class PackerBinary < Formula
    desc "Packer is a tool for creating machine and container images for multiple platforms from a single source configuration."
    homepage "https://www.packer.io/"
    version "0.10.1"
    url "https://releases.hashicorp.com/packer/#{version}/packer_#{version}_linux_amd64.zip"
    sha256 "7d51fc5db19d02bbf32278a8116830fae33a3f9bd4440a58d23ad7c863e92e28"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/packer" => "packer"})
    end
end