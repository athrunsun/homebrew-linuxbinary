class AnnieBinary < Formula
    desc "A fast, simple and clean video downloader."
    homepage "https://github.com/iawia002/annie"
    version "0.11.0"

    url "https://github.com/iawia002/annie/releases/download/#{version}/annie_#{version}_Linux_64-bit.tar.gz"
    sha256 "ef247b2e5d318c55657446260e2663908ec8d77677c22ca71aec74384c65c880"

    bottle :unneeded
    conflicts_with "annie"

    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/annie")
        bin.install_symlink("#{libexec}/annie" => "annie")
    end

    def caveats; <<~EOS
        Executable is linked as "annie".
        EOS
    end
end
