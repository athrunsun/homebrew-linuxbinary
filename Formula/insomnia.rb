class Insomnia < Formula
    desc "Cross-platform HTTP and GraphQL Client."
    homepage "https://github.com/getinsomnia/insomnia"
    version "6.0.2"

    url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/insomnia-#{version}.tar.gz"
    sha256 "d2beece85a5c27d465eb5fe58a11918b40feb3dafdd08d23b2067b074e19c90a"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/insomnia" => "insomnia")
    end

    def caveats; <<~EOS
        Executable is linked as "insomnia".
        EOS
    end
end
