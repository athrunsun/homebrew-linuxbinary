class Insomnia < Formula
    desc "Cross-platform HTTP and GraphQL Client."
    homepage "https://github.com/getinsomnia/insomnia"
    version "6.3.2"

    url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/insomnia-#{version}.tar.gz"
    sha256 "6ab8d6be575a79a75f39a7926eb485b6ab7f33f17dce51eefabddbef3c52417c"

    conflicts_with "insomnia-appimage"

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/insomnia" => "insomnia")
    end

    def caveats; <<~EOS
        Executable is linked as "insomnia".
        EOS
    end
end
