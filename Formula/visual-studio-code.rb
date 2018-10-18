class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com/"
    version "1.28.2"

    option "with-cn-mirror", "Download from Azure China CDN, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/7f3ce96ff4729c91352ae6def877e59c561f4850/code-stable-1539735949.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/7f3ce96ff4729c91352ae6def877e59c561f4850/code-stable-1539735949.tar.gz"
        end

        sha256 "dead6eccaf545dec13f4c3500097a877f5bb970568c9902934c7b19af284a0fc"
    else
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/7f3ce96ff4729c91352ae6def877e59c561f4850/code-stable-1539735905.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/7f3ce96ff4729c91352ae6def877e59c561f4850/code-stable-1539735905.tar.gz"
        end

        sha256 "f98b67d03bc1f58cb5a410d64e18f7bd2d71773605fa35b4de3ce08f01eaef8f"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/code")
    end

    def caveats; <<~EOS
        Executable is linked as "code".
        EOS
    end
end
