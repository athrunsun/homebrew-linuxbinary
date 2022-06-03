class WuzzBinary < Formula
    desc "Interactive cli tool for HTTP inspection"
    homepage "https://github.com/asciimoo/wuzz"
    version "0.4.0"

    url "https://github.com/asciimoo/wuzz/releases/download/v#{version}/wuzz_linux_amd64"
    sha256 "5a1443e07a5a9b9bb813804290e87fdd27b544f4fe00ef95fe3b64e7b56459ec"


    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/wuzz_linux_amd64")
        bin.install_symlink("#{libexec}/wuzz_linux_amd64" => "wuzz")
    end

    def caveats; <<~EOS
        Executable is linked as "wuzz".
        EOS
    end
end
