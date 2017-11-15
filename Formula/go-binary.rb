class GoBinary < Formula
    desc "Go programming environment, binary installation."
    homepage "https://golang.org"
    version "1.8.3"

    option "with-mirror", "Download from https://mirrors.ustc.edu.cn/golang/, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "mirror"
            url "https://mirrors.ustc.edu.cn/golang/go#{version}.linux-amd64.tar.gz"
        else
            url "https://storage.googleapis.com/golang/go#{version}.linux-amd64.tar.gz"
        end

        sha256 "1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772"
    else
        if build.with? "mirror"
            url "https://mirrors.ustc.edu.cn/golang/go#{version}.linux-386.tar.gz"
        else
            url "https://storage.googleapis.com/golang/go#{version}.linux-386.tar.gz"
        end

        sha256 "ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2"
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
