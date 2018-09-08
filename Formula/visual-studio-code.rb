class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com/"
    version "1.27.1"

    option "with-cn-mirror", "Download from Azure China CDN, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/5944e81f3c46a3938a82c701f96d7a59b074cfdc/code-stable-1536225977.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/5944e81f3c46a3938a82c701f96d7a59b074cfdc/code-stable-1536225977.tar.gz"
        end

        sha256 "733b6041431620f2e1caee639a2df3cc6eee418a2c370440909d243055c7f623"
    else
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/5944e81f3c46a3938a82c701f96d7a59b074cfdc/code-stable-1536225976.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/5944e81f3c46a3938a82c701f96d7a59b074cfdc/code-stable-1536225976.tar.gz"
        end

        sha256 "59dec2498c312ceb2185fdca6811c138c0f770cbeb6f3fe16fcf6ae15a4b3213"
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
