class Zoom < Formula
    desc "Video Conferencing, Web Conferencing, Webinars, Screen Sharing"
    homepage "https://zoom.us"
    version "2.6.146750.1204"

    url "https://zoom.us/client/#{version}/zoom_x86_64.tar.xz"
    sha256 "2f6b881b4112afa231165059e35d87191f99300316cb827272d670ff5ea097a1"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink("#{libexec}/zoom" => "zoom")
    end

    def caveats; <<~EOS
        Executable linked as "zoom".
        EOS
    end
end
