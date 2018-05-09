class IntellijIdea < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2018.1.2"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}.tar.gz"
    sha256 "c0a8f0fdd9c80bec62320fc26bdf3546ee513f51d990e0cf6d66b3d998e23a10"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "idea")
    end

    def caveats; <<~EOS
        Executable is linked as "idea".
        EOS
    end
end
