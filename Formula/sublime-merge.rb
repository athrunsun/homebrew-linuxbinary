class SublimeMerge < Formula
    desc "Git Client, done Sublime."
    homepage "https://www.sublimemerge.com"
    version "1107"

    url "https://download.sublimetext.com/sublime_merge_build_#{version}_x64.tar.xz"
    sha256 "70edbb16529d638ea41a694dbc5b1408c76fcc3a7d663ef0e48b4e89e1f19c71"


    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/sublime_merge" => "subm")
    end

    def caveats; <<~EOS
        Executable linked as "subm".
        EOS
    end
end
