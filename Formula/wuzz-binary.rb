class WuzzBinary < Formula
    desc "Interactive cli tool for HTTP inspection"
    homepage "https://github.com/asciimoo/wuzz"
    version "0.4.0"

    if MacOS.prefer_64_bit?
        url "https://github.com/asciimoo/wuzz/releases/download/v#{version}/wuzz_linux_amd64"
        sha256 "5a1443e07a5a9b9bb813804290e87fdd27b544f4fe00ef95fe3b64e7b56459ec"
    else
        url "https://github.com/asciimoo/wuzz/releases/download/v#{version}/wuzz_linux_386"
        sha256 "7607016cf5c6c423007084d446c9610cfd7fef5f6d9e0a9432c83952f86ce2c9"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        
        if MacOS.prefer_64_bit?
            chmod(0755, "#{libexec}/wuzz_linux_amd64")
            bin.install_symlink("#{libexec}/wuzz_linux_amd64" => "wuzz")
        else
            chmod(0755, "#{libexec}/wuzz_linux_386")
            bin.install_symlink("#{libexec}/wuzz_linux_386" => "wuzz")
        end
    end

    def caveats; <<~EOS
        Executable is linked as "wuzz".
        EOS
    end
end
