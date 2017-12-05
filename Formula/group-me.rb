class GroupMe < Formula
  desc "Unofficial GroupMe App"
  homepage "https://github.com/dcrousso/GroupMe"
  version "1.1.1"

  url "https://github.com/dcrousso/GroupMe/releases/download/v#{version}/GroupMe-linux-#{version}.zip"

  sha256 "85e79de8cb36048bdb421d6c8b45d07ad5326fc51b1ae05d4bbfff52f8a9c594"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/GroupMe" => "groupme")
  end

  def caveats; <<-EOS.undent
        Executable is linked as "groupme".
        EOS
  end
end
