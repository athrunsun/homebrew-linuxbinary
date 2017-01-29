class GoBinary < Formula
    desc "Go programming environment, binary installation."
    homepage "https://golang.org"
    version "1.7.5"

    if MacOS.prefer_64_bit?
        url "https://storage.googleapis.com/golang/go#{version}.linux-amd64.tar.gz"
        sha256 "2e4dd6c44f0693bef4e7b46cc701513d74c3cc44f2419bf519d7868b12931ac3"
    else
        url "https://storage.googleapis.com/golang/go#{version}.linux-386.tar.gz"
        sha256 "432cb92ae656f6fe1fa96a981782ef5948438b6da6691423aae900918b1eb955"
    end

    bottle :unneeded
    conflicts_with "go"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end

    def caveats; <<-EOS.undent
        As of go 1.2, a valid GOPATH is required to use the `go get` command:
            https://golang.org/doc/code.html#GOPATH
        So don't forget to set GOROOT:
            export GOROOT=$(brew --prefix go)
        You may wish to add the GOROOT-based install location to your PATH:
            export PATH=$PATH:$GOROOT/bin
        Besides you may also want to set GOPATH:
            export GO_PATH=$HOME/go
        EOS
    end
end
