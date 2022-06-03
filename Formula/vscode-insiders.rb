class VscodeInsiders < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the insiders version."
    homepage "https://code.visualstudio.com/insiders"
    version "1.34.20"

    url "https://vscode-update.azurewebsites.net/#{version}/linux-x64/insider"
    sha256 "a3f2716151d0ef38809afad7f06700885d397c619a0789509ab58664d2d4cca8"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/code-insiders")
    end

    def caveats; <<~EOS
        Executable is linked as "code-insiders".
        EOS
    end
end
