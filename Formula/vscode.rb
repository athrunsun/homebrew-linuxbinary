class Vscode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com"
    version "1.33.1"

    option "with-cn-mirror", "Download from Azure China CDN, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "cn-mirror"
        url "https://vscode.cdn.azure.cn/stable/51b0b28134d51361cf996d2f0a1c698247aeabd8/code-stable-1554971043.tar.gz"
    else
        url "https://az764295.vo.msecnd.net/stable/51b0b28134d51361cf996d2f0a1c698247aeabd8/code-stable-1554971043.tar.gz"
    end

    sha256 "fbf31a814755c54ff744a5da77b5652aa6963a1c3a365a6399cc65ef30935152"

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
