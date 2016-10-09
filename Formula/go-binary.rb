class GoBinary < Formula
    desc "Go programming environment, binary installation."
    homepage "https://golang.org"
    version "1.7.1"

    if MacOS.prefer_64_bit?
        url "https://storage.googleapis.com/golang/go#{version}.linux-amd64.tar.gz"
        sha256 "43ad621c9b014cde8db17393dc108378d37bc853aa351a6c74bf6432c1bbd182"
    else
        url "https://storage.googleapis.com/golang/go#{version}.linux-386.tar.gz"
        sha256 "ff6f52de513002b6abb0897654eeb6a7280b420fab3108a382b4f4aba07ad4a6"
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