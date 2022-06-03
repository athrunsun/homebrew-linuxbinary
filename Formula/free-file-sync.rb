class FreeFileSync < Formula
    desc "Open source file synchronization."
    homepage "https://freefilesync.org"
    version "10.16"

    url "https://freefilesync.org/download/FreeFileSync_#{version}_Linux.tar.gz"
    sha256 "A7C7178F7163C4039DD01E12C2BDC2282E44CBC46072142B72CF03FD8651C4D2"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/FreeFileSync" => "FreeFileSync")
        bin.install_symlink("#{libexec}/RealTimeSync" => "RealTimeSync")
    end

    def caveats; <<~EOS
        Executable is linked as "FreeFileSync" and "RealTimeSync".
        EOS
    end
end
