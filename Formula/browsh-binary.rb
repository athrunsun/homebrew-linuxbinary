class BrowshBinary < Formula
    desc "A fully-modern text-based browser, rendering to TTY and browsers."
    homepage "https://github.com/browsh-org/browsh https://www.brow.sh"
    version "1.3.3"

    url "https://github.com/browsh-org/browsh/releases/download/v#{version}/browsh_#{version}_linux_amd64"
    sha256 "379fa6b795a04def24560fd4210aea9cd203c41616dd7999e9c61208434ba712"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        mv("#{libexec}/browsh_1.3.3_linux_amd64", "#{libexec}/browsh")
        chmod(0755, "#{libexec}/browsh")
        bin.install_symlink("#{libexec}/browsh")
    end

    def caveats; <<~EOS
        Executable is linked as "browsh".
        EOS
    end
end
