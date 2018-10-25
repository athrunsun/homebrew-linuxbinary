class TtydBinary < Formula
    desc "Share your terminal over the web"
    homepage "https://github.com/tsl0922/ttyd"
    version "1.4.2"

    if MacOS.prefer_64_bit?
        url "https://github.com/tsl0922/ttyd/releases/download/#{version}/ttyd_linux.x86_64"
        sha256 "c83cae84f3ea57678649a67f0d0fe6d185460d78204278282f3a09323929c052"
    else
        url "https://github.com/tsl0922/ttyd/releases/download/#{version}/ttyd_linux.i386"
        sha256 "8804fc8d7980c0bfdc5fd638ba0902c68996c27a32fd4a3b08cb2da716485445"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]

        if MacOS.prefer_64_bit?
            chmod(0755, "#{libexec}/ttyd_linux.x86_64")
            bin.install_symlink("#{libexec}/ttyd_linux.x86_64" => "ttyd")
        else
            chmod(0755, "#{libexec}/ttyd_linux.i386")
            bin.install_symlink("#{libexec}/ttyd_linux.i386" => "ttyd")
        end
    end

    def caveats; <<~EOS
        Executable is linked as "ttyd".
        EOS
    end
end
