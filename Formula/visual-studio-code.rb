class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com/"
    version "1.29.1"

    option "with-cn-mirror", "Download from Azure China CDN, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/bc24f98b5f70467bc689abf41cc5550ca637088e/code-stable-1542309103.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/bc24f98b5f70467bc689abf41cc5550ca637088e/code-stable-1542309103.tar.gz"
        end

        sha256 "31e570bc8ba9e32e2d7ea9a746fb91fbf8a4e011372d99c16c633f4abeacc6e4"
    else
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/bc24f98b5f70467bc689abf41cc5550ca637088e/code-stable-1542309197.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/bc24f98b5f70467bc689abf41cc5550ca637088e/code-stable-1542309197.tar.gz"
        end

        sha256 "9c0fa7448b707be0b55ebc9ebdfa4e90f291d1042ca145ef91e847f3de882964"
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
