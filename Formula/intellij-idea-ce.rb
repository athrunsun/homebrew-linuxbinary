class IntellijIdeaCe < Formula
    desc "The Most Intelligent Java IDE, community edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2018.1.4"
    url "https://download.jetbrains.com/idea/ideaIC-#{version}.tar.gz"
    sha256 "26e674de05976cc7e822d77a2dfe8b8f6136e18f1e91f1c8212019f2781164e1"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "ideac")
    end

    def caveats; <<~EOS
        Executable is linked as "ideac".
        EOS
    end
end
