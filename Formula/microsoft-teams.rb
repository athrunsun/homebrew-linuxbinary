require "language/node"

class MicrosoftTeams < Formula
  desc "Unofficial Microsoft Teams for Linux client"
  homepage "https://github.com/ivelkov/teams-for-linux"
  version "0.0.5"
  url "https://github.com/ivelkov/teams-for-linux/releases/download/v#{version}/teams-for-linux-#{version}.tar.gz"
  sha256 "9b7b14e65b18f9d0396d2367999d67cd0a87412169407e7350e2b463a9f9ef5d"
  head "https://github.com/ivelkov/teams-for-linux.git"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/teams" => "teams")
  end

  def caveats; <<~EOS
    Executable is linked as "teams".
    EOS
  end
end
