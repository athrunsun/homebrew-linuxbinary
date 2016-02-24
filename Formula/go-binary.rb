class GoBinary < Formula
    desc "Go programming environment, binary installation."
    homepage "https://golang.org"
    version "1.6"

    if MacOS.prefer_64_bit?
        url "https://storage.googleapis.com/golang/go#{version}.linux-amd64.tar.gz"
        sha256 "5470eac05d273c74ff8bac7bef5bad0b5abbd1c4052efbdbc8db45332e836b0b"
    else
        url "https://storage.googleapis.com/golang/go#{version}.linux-386.tar.gz"
        sha256 "7a240a0f45e559d47ea07319d9faf838225eb9e18174f56a76ccaf9860dbb9b1"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end

    def caveats; <<-EOS.undent
        As of go 1.2, a valid GOPATH is required to use the `go get` command:
            https://golang.org/doc/code.html#GOPATH
        Also don't forget to set GOROOT:
            export GOROOT=$HOME/go
        You may wish to add the GOROOT-based install location to your PATH:
            export PATH=$PATH:$GOROOT/bin
        EOS
    end
end