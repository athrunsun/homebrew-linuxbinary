class CodeServer < Formula
    desc "Run VS Code on a remote server."
    homepage "https://github.com/cdr/code-server"
    version "1.939"

    url "https://github.com/cdr/code-server/releases/download/#{version}-vsc1.33.1/code-server#{version}-vsc1.33.1-linux-x64.tar.gz"
    sha256 "3c266d496f30582e906b71d6bc86673787ef52761eedca08445518502744fea1"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/code-server")
    end

    def caveats; <<~EOS
        Executable is linked as "code-server".
        EOS
    end
end
