class BrowshBinary < Formula
    desc "A fully-modern text-based browser, rendering to TTY and browsers."
    homepage "https://github.com/browsh-org/browsh https://www.brow.sh"
    version "1.6.4"

    url "https://github.com/browsh-org/browsh/releases/download/v#{version}/browsh_#{version}_linux_amd64"
    sha256 "d0bbdfe07e1494bb097dcff6290f17f98f6e3e5546f17139223b75d97c1caab5"


    def install
        libexec.install Dir["*"]
        mv("#{libexec}/browsh_#{version}_linux_amd64", "#{libexec}/browsh")
        chmod(0755, "#{libexec}/browsh")
        bin.install_symlink("#{libexec}/browsh")
    end

    def caveats; <<~EOS
        You need Firefox 57 or newer to run Browsh
        EOS
    end
end
