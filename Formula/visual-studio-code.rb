class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com/"
    version "1.29.0"

    option "with-cn-mirror", "Download from Azure China CDN, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/5f24c93878bd4bc645a4a17c620e2487b11005f9/code-stable-1542008778.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/5f24c93878bd4bc645a4a17c620e2487b11005f9/code-stable-1542008778.tar.gz"
        end

        sha256 "8ecbbf632d7e2cd95b0331f7bcbfd304878ce48be6eb95f9d9c8eb060189e2ec"
    else
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/5f24c93878bd4bc645a4a17c620e2487b11005f9/code-stable-1542008952.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/5f24c93878bd4bc645a4a17c620e2487b11005f9/code-stable-1542008952.tar.gz"
        end

        sha256 "aa6972a1670dc5b5b8a0d9ed38d930c4feab783aed0ee13e153cee351ab60a8b"
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
