class VisualStudioCodeInsiders < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the insiders version."
    homepage "https://code.visualstudio.com/"
    version "1.18.0"

    if MacOS.prefer_64_bit?
        url "https://az764295.vo.msecnd.net/insider/8bc02c7443305a0db442c11b76e67d6f4929dc0e/code-insider-#{version}-1508995529_amd64.tar.gz"
        sha256 "670042ca762acdfd66bd5f066019fa154893fde45e30569201bc5e9f9ecdef0a"
    else
        url "https://az764295.vo.msecnd.net/insider/8bc02c7443305a0db442c11b76e67d6f4929dc0e/code-insider-#{version}-1508995525_i386.tar.gz"
        sha256 "5d9332fcb975f83a4eaae1055c906011ea363c0f0345283b1ccb82dc3b02bb18"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/code")
    end
end
