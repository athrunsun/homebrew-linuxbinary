class GoBinary < Formula
    desc "Go programming environment, binary installation."
    homepage "https://golang.org"
    version "1.7.3"

    if MacOS.prefer_64_bit?
        url "https://storage.googleapis.com/golang/go#{version}.linux-amd64.tar.gz"
        sha256 "508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e"
    else
        url "https://storage.googleapis.com/golang/go#{version}.linux-386.tar.gz"
        sha256 "d39d562c3247b11ae659afe1e131a3287c60b7de207ca5f25684c26f1c1dff5c"
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
