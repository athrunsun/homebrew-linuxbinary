class VisualStudioCode < Formula
    desc "VS Code is a new type of tool that combines the simplicity of a code editor with what developers need for their core edit-build-debug cycle."
    homepage "https://code.visualstudio.com/"
    version "1.12.2"

    if MacOS.prefer_64_bit?
        url "https://az764295.vo.msecnd.net/stable/19222cdc84ce72202478ba1cec5cb557b71163de/code-stable-code_1.12.2-1494422229_amd64.tar.gz"
        sha256 "3ac5de1a12c44e3f45a7c16df8977e99809697f3259715a94996d2c4a898cc5c"
    else
        url "https://az764295.vo.msecnd.net/stable/19222cdc84ce72202478ba1cec5cb557b71163de/code-stable-code_1.12.2-1494423350_i386.tar.gz"
        sha256 "d309cd9e809d4328d489a9d43897a47b28ffce30754e1e46c60a8ad137d24108"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/code" => "code"})
    end
end
