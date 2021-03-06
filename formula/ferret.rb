#
#  Copyright (c) 2021, salesforce.com, inc.
#  All rights reserved.
#  SPDX-License-Identifier: BSD-3-Clause
#  For full license text, see the LICENSE file in the repo root or https://opensource.org/licenses/BSD-3-Clause
#
#
require "formula"
require_relative "lib/private_strategy"

class Ferret < Formula
  desc ""
  homepage "https://github.com/salesforce/ferret"
  url "https://github.com/salesforce/ferret/releases/download/1.0.12/ferret-mac-1.0.12.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "1.0.12"
  sha256 "e1232083d85d5f0bbb904dbeea9e8a9eeb0b0538a0fd23aab46cb7d97c2afbb1"

  def install
    bin.install "ferret"
  end

  # Homebrew requires tests.
  test do
    system "#{bin}/ferret version"
  end
end
