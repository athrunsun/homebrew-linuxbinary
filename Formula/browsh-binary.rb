class BrowshBinary < Formula
    desc "A fully-modern text-based browser, rendering to TTY and browsers."
    homepage "https://github.com/browsh-org/browsh https://www.brow.sh"
    version "1.3.3"

    if MacOS.prefer_64_bit?
        url "https://github.com/browsh-org/browsh/releases/download/v#{version}/browsh_#{version}_linux_amd64"
        sha256 "379fa6b795a04def24560fd4210aea9cd203c41616dd7999e9c61208434ba712"
    else
        url "https://github.com/browsh-org/browsh/releases/download/v#{version}/browsh_#{version}_linux_386"
        sha256 "d5b787947101e3f79df1d4c5b3292a30782b8af68e6639099a30b10247969e6d"
    end

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        
        if MacOS.prefer_64_bit?
            mv("#{libexec}/browsh_1.3.3_linux_amd64", "#{libexec}/browsh")
        else
            mv("#{libexec}/browsh_1.3.3_linux_386", "#{libexec}/browsh")
        end

        chmod(0755, "#{libexec}/browsh")
        bin.install_symlink("#{libexec}/browsh")
    end

    def caveats; <<~EOS
        Executable is linked as "browsh".
        EOS
    end
end
