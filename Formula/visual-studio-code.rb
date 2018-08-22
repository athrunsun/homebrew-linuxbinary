class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com/"
    version "1.26.1"

    option "with-cn-mirror", "Download from Azure China CDN, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/493869ee8e8a846b0855873886fc79d480d342de/code-stable-1534444642.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/493869ee8e8a846b0855873886fc79d480d342de/code-stable-1534444642.tar.gz"
        end

        sha256 "5ef2f82e1272b0008a446fc8f62f9693e2af7c83d5922883ecbfd8a9986fd40b"
    else
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/493869ee8e8a846b0855873886fc79d480d342de/code-stable-1534444635.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/493869ee8e8a846b0855873886fc79d480d342de/code-stable-1534444635.tar.gz"
        end

        sha256 "16a9eb4582767c31ca92fce9d7ed97b960175d8a97db25fab3c8e56afec2f3bc"
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
