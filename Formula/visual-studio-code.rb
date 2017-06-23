class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle."
    homepage "https://code.visualstudio.com/"
    version "1.13.1"

    if MacOS.prefer_64_bit?
        url "https://az764295.vo.msecnd.net/stable/379d2efb5539b09112c793d3d9a413017d736f89/code-stable-code_1.13.1-1497464373_amd64.tar.gz"
        sha256 "0b51165ed6cdd36937e93a6f0359392f39874499912bcc363bf42dd0cfdd3c05"
    else
        url "https://az764295.vo.msecnd.net/stable/379d2efb5539b09112c793d3d9a413017d736f89/code-stable-code_1.13.1-1497464335_i386.tar.gz"
        sha256 "faf67ae4ea5de59eceeeb2ca90fd439fb756f3c1cf4ad491788e103d602660dd"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/code")
    end
end
