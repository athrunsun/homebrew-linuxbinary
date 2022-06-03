class TtydBinary < Formula
    desc "Share your terminal over the web"
    homepage "https://github.com/tsl0922/ttyd"
    version "1.4.2"

    url "https://github.com/tsl0922/ttyd/releases/download/#{version}/ttyd_linux.x86_64"
    sha256 "c83cae84f3ea57678649a67f0d0fe6d185460d78204278282f3a09323929c052"


    def install
        libexec.install Dir["*"]
        chmod(0755, "#{libexec}/ttyd_linux.x86_64")
        bin.install_symlink("#{libexec}/ttyd_linux.x86_64" => "ttyd")
    end

    def caveats; <<~EOS
        Executable is linked as "ttyd".
        EOS
    end
end
