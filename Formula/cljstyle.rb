class Cljstyle < Formula
    desc "Tool for formatting Clojure code"
    homepage "https://github.com/greglook/cljstyle"
    version "0.15.0"

    url "https://github.com/greglook/cljstyle/releases/download/#{version}/cljstyle_#{version}_linux.tar.gz"
    sha256 "01082571ced68115fc17c6ddd8bc5c19983c7d8dcd90f48b41795ac44c641c46"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/cljstyle" => "cljstyle")
    end
end
