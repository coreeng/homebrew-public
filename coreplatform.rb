# frozen_string_literal: true

# Metapackage that installs tools for using Core Platform.
class Coreplatform < Formula
  desc "Command-line tools for Core Platform"
  homepage "https://coreplatform.io"
  url "https://raw.githubusercontent.com/coreeng/homebrew-public/da225328badb7c5653fa46fa24082a6a15318b8d/LICENSE"
  version "1.0.0"
  sha256 "a95a5668e29fbf7ade60f73e91ab9825a1df379cea84c3d63a3ec08f95da2857"

  depends_on "coreeng/public/corectl"
  depends_on "k3d"

  def install
    (pkgshare/"tools").write "corectl\nk3d\n"
  end

  test do
    assert_match "corectl", shell_output("#{formula_opt_bin("coreeng/public/corectl")}/corectl version")
    assert_match "k3d version", shell_output("#{formula_opt_bin("k3d")}/k3d version")
  end
end
