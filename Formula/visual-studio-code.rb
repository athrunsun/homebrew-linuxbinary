class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com/"
    version "1.30.0"

    option "with-cn-mirror", "Download from Azure China CDN, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/c6e592b2b5770e40a98cb9c2715a8ef89aec3d74/code-stable-1544567094.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/c6e592b2b5770e40a98cb9c2715a8ef89aec3d74/code-stable-1544567094.tar.gz"
        end

        sha256 "818ab50bd1e1d0c93ca2cbb21d3bd8697563fd7399049de79ebd040c9cf376fd"
    else
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/c6e592b2b5770e40a98cb9c2715a8ef89aec3d74/code-stable-1544567214.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/c6e592b2b5770e40a98cb9c2715a8ef89aec3d74/code-stable-1544567214.tar.gz"
        end

        sha256 "414a02532374e219b990255a14eee06ec4467ef58b148f7586cbee636c93a22d"
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
