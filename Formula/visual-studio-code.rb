class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com"
    version "1.30.1"

    option "with-cn-mirror", "Download from Azure China CDN, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "cn-mirror"
        url "https://vscode.cdn.azure.cn/stable/dea8705087adb1b5e5ae1d9123278e178656186a/code-stable-1545156735.tar.gz"
    else
        url "https://az764295.vo.msecnd.net/stable/dea8705087adb1b5e5ae1d9123278e178656186a/code-stable-1545156735.tar.gz"
    end

    sha256 "8ac8f4149c555def050bedcf32d0a260af6597925d6e8dd69cabb0f40d9be740"

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
