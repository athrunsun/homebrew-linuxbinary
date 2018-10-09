class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com/"
    version "1.28.0"

    option "with-cn-mirror", "Download from Azure China CDN, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/431ef9da3cf88a7e164f9d33bf62695e07c6c2a9/code-stable-1538751479.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/431ef9da3cf88a7e164f9d33bf62695e07c6c2a9/code-stable-1538751479.tar.gz"
        end

        sha256 "a4ebf23883258a22b2483c88d35f694dd509b26ee71b29d57c62a61242fd6b1d"
    else
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/431ef9da3cf88a7e164f9d33bf62695e07c6c2a9/code-stable-1538751352.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/431ef9da3cf88a7e164f9d33bf62695e07c6c2a9/code-stable-1538751352.tar.gz"
        end

        sha256 "1e38454a669e9c14df0b0229a560ca33b1def91b024d7b483789570a80bfa438"
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
