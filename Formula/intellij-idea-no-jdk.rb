class IntellijIdeaNoJdk < Formula
    desc "The Most Intelligent Java IDE, ultimate edition."
    homepage "http://www.jetbrains.com/idea/"
    version "2018.1.4"
    url "https://download.jetbrains.com/idea/ideaIU-#{version}-no-jdk.tar.gz"
    sha256 "5978b76342297ad84dff1e7c5599a91ffd420f6cfcc3238c9c734520756238e7"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/bin/idea.sh" => "idean")
    end

    def caveats; <<~EOS
        Executable is linked as "idean" so that it doesn't conflict with intellij-idea.
        EOS
    end
end
