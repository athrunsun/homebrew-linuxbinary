class IntellijIdeaCe < Formula
    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2017.2.5"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "194e6d4e5d2216c2f708842375be9f4ede5f731924b2710cf12c02e3351fe606"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "ideac")
    end

    def caveats; <<~EOS
        Executable is linked as "ideac".
        EOS
    end
end
