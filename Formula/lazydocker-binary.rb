class LazydockerBinary < Formula
    desc "The lazier way to manage everything docker"
    homepage "https://github.com/jesseduffield/lazydocker"
    version "0.2.4"

    url "https://github.com/jesseduffield/lazydocker/releases/download/v#{version}/lazydocker_#{version}_Linux_x86_64.tar.gz"
    sha256 "1c56854f2158f0c5193d7ddfb2396a08296ccac3bfd58db2f67eadbaca794a2d"


    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/lazydocker")
        bin.install_symlink("#{libexec}/lazydocker" => "lazydocker")
    end

    def caveats; <<~EOS
        Executable is linked as "lazydocker".
        EOS
    end
end
