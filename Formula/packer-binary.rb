class PackerBinary < Formula
    desc "Packer is a tool for creating machine and container images for multiple platforms from a single source configuration."
    homepage "https://www.packer.io/"
    version "0.12.2"

    if MacOS.prefer_64_bit?
        url "https://releases.hashicorp.com/packer/#{version}/packer_#{version}_linux_amd64.zip"
        sha256 "035d0ea1fe785ab6b673bc2a79399125d4014f29151e106635fa818bb726bebf"
    else
        url "https://releases.hashicorp.com/packer/#{version}/packer_#{version}_linux_386.zip"
        sha256 "458e63a74104e3e550181f5cf2a20f29d79e326c518bcb5723399d4e56ff3f20"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/packer")
    end
end
