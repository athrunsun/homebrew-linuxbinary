class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle."
    homepage "https://code.visualstudio.com/"
    version "1.1"

    if MacOS.prefer_64_bit?
        url "https://az764295.vo.msecnd.net/stable/c212f0908f3d29933317bbc3233568fbca7944b1/VSCode-linux-x64-stable.zip"
        sha256 "c46f6ddc78815770b461a9d3f8be4791d8435020ce6a27ad12a31768f61a696c"
    else
        url "https://az764295.vo.msecnd.net/stable/c212f0908f3d29933317bbc3233568fbca7944b1/VSCode-linux-ia32-stable.zip"
        sha256 "e2b8872822043a255281adef85956ae0905d45c0270636a2bc24d758deadd704"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install({"#{libexec}/code" => "code"})
    end
end
