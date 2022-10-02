class HttpieGo < Formula
    desc "httpie-like HTTP client written in Go."
    homepage "https://github.com/nojima/httpie-go"
    version "0.7.0"

    url "https://github.com/nojima/httpie-go/releases/download/v#{version}/httpie-go_linux_amd64"
    sha256 "8dbc2ec159dbb6b75922ef4553b9ff56d6cd84a2f4124c75180096311dc52192"

    def install
        libexec.install Dir["*"]
        mv("#{libexec}/httpie-go_linux_amd64", "#{libexec}/httpg")
        chmod(0755, "#{libexec}/httpg")
        bin.install_symlink("#{libexec}/httpg" => "httpg")
    end

    def caveats; <<~EOS
        Executable is linked as "httpg".
        EOS
    end

    test do
        system "#{bin}/httpg", "--version"
    end
end
