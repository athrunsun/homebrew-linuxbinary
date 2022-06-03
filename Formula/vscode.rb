class Vscode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle. This is the stable version."
    homepage "https://code.visualstudio.com"
    version "1.33.1"

    url "https://vscode-update.azurewebsites.net/#{version}/linux-x64/stable"
    sha256 "fbf31a814755c54ff744a5da77b5652aa6963a1c3a365a6399cc65ef30935152"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/code")
    end

    def caveats; <<~EOS
        Executable is linked as "code".
        EOS
    end
end
