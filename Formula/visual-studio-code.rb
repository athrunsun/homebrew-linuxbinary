class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com/"
    version "1.19.3"

    option "with-cn-mirror", "Download from Azure China CDN, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/7c4205b5c6e52a53b81c69d2b2dc8a627abaa0ba/code-stable-code_#{version}-1516876437_amd64.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/7c4205b5c6e52a53b81c69d2b2dc8a627abaa0ba/code-stable-code_#{version}-1516876437_amd64.tar.gz"
        end

        sha256 "f3649e6dee1f2ac6eda41b8aec2b49dcc8945f730816f285d7da3e18726673cf"
    else
        if build.with? "cn-mirror"
            url "https://vscode.cdn.azure.cn/stable/7c4205b5c6e52a53b81c69d2b2dc8a627abaa0ba/code-stable-code_#{version}-1516876497_i386.tar.gz"
        else
            url "https://az764295.vo.msecnd.net/stable/7c4205b5c6e52a53b81c69d2b2dc8a627abaa0ba/code-stable-code_#{version}-1516876497_i386.tar.gz"
        end
        
        sha256 "b9c77eb6d89a83ab86c4e450e0aa7abd66f49eaad8bf146ad45e272f35935161"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/code")
    end
end
