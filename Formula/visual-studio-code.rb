class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com/"
    version "1.26"

    if MacOS.prefer_64_bit?
        url "https://vscode-update.azurewebsites.net/#{version}/linux-x64/stable"
        sha256 "618ca429e23777ef6b512c0cbd78bc711a7cf6f58752d9f805ced1dc62abb8f0"
    else
        url "https://vscode-update.azurewebsites.net/#{version}/linux-ia32/stable"
        sha256 "fd150bee8e1be4f5461013b8fee19f855200d046643e4ea5387aad170ad5f12b"
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
