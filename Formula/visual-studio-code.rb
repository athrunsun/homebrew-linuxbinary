class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle."
    homepage "https://code.visualstudio.com/"
    version "1.7"

    if MacOS.prefer_64_bit?
        url "https://az764295.vo.msecnd.net/stable/02611b40b24c9df2726ad8b33f5ef5f67ac30b44/code-stable-code_1.7.1-1478180561_amd64.tar.gz"
        sha256 "af7f110749a37233df574307d4f3847612a918c3d4baf46671961536854cd840"
    else
        url "https://az764295.vo.msecnd.net/stable/02611b40b24c9df2726ad8b33f5ef5f67ac30b44/code-stable-code_1.7.1-1478181356_i386.tar.gz"
        sha256 "9de3494c55fa2a37b599a4c5ec43cf4e1342095e64150cca21a03e42f5bbf6e2"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/code" => "code"})
    end
end
