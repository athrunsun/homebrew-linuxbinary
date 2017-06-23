class IntellijIdeaNoJdk < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2017.1.4"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}-no-jdk.tar.gz"
    sha256 "44d9f92082799c7094d6d152465b6159a783bcddeafeaabc06eb5fa6f5d2d92f"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "idean")
    end

    def caveats; <<-EOS.undent
        Executable is linked as "idean" so that it doesn't conflict with intellij-idea.
        EOS
    end
end
