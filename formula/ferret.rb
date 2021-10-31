require "formula"
require_relative "lib/private_strategy"

class Ferret < Formula
  desc ""
  homepage "https://github.com/datorama/ferret"
  url "https://github.com/datorama/ferret/releases/download/1.0.10/ferret-mac-1.0.10.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "1.0.10"
  sha256 "c87752624fd89670ab46388872d6b2fa6cf1616ca40360acc37774badce91920"

  def install
    bin.install "ferret"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/ferret version"
  end
end
