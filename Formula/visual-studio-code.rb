class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com/"
    version "1.25.1"

    if MacOS.prefer_64_bit?
        url "https://vscode-update.azurewebsites.net/#{version}/linux-x64/stable"
        sha256 "5856bbebf38aa05d584da4722869bbe507cf123f69f7ffab5f1532d73dbf3438"
    else
        url "https://vscode-update.azurewebsites.net/#{version}/linux-ia32/stable"
        sha256 "af6adc2e2500e50bfebe7ee7b97d661b6e774a590136bf5f89334132a5b292e2"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/code")
    end
end
