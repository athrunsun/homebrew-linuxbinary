class VscodeInsiders < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the insiders version."
    homepage "https://code.visualstudio.com"
    version "1.18.0"

    url "https://az764295.vo.msecnd.net/insider/8bc02c7443305a0db442c11b76e67d6f4929dc0e/code-insider-#{version}-1508995529_amd64.tar.gz"
    sha256 "670042ca762acdfd66bd5f066019fa154893fde45e30569201bc5e9f9ecdef0a"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/code")
    end
end
