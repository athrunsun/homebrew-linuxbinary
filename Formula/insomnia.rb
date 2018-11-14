class Insomnia < Formula
    desc "Cross-platform HTTP and GraphQL Client."
    homepage "https://github.com/getinsomnia/insomnia"
    version "6.2.0"

    url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/insomnia-#{version}.tar.gz"
    sha256 "02c2d6e29b1b49bbe22252e2052a1a86ae838bdde4f9ae814754856f44772330"

    bottle :unneeded
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
