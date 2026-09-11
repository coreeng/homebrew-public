# frozen_string_literal: true

# Preview distribution of the Core Platform API client.
class CorectlNg < Formula
  desc "Core Platform API command-line client (preview)"
  homepage "https://coreplatform.io"
  version "0.0.0-ee99185326289e8629b5e7b9cb34dad2f2326301"

  on_macos do
    on_arm do
      url "https://ghcr.io/v2/coreeng/corectl/blobs/sha256:64968510aee7f976e5863d34c298441b3a0c04e8f026aad695efc801ccfa7df4"
      sha256 "64968510aee7f976e5863d34c298441b3a0c04e8f026aad695efc801ccfa7df4"
    end
    on_intel do
      url "https://ghcr.io/v2/coreeng/corectl/blobs/sha256:62ddd196a433275b782642373253e18ae06cb7fd4582c97cc5a9718ab1ad868d"
      sha256 "62ddd196a433275b782642373253e18ae06cb7fd4582c97cc5a9718ab1ad868d"
    end
  end

  on_linux do
    on_arm do
      url "https://ghcr.io/v2/coreeng/corectl/blobs/sha256:4154f03e2373c84192bde8cde1c89b8d8b5affe654821c76caf842446c3505cf"
      sha256 "4154f03e2373c84192bde8cde1c89b8d8b5affe654821c76caf842446c3505cf"
    end
    on_intel do
      url "https://ghcr.io/v2/coreeng/corectl/blobs/sha256:720c5b2a0ed3e0cdd2ebec1cf20fdac141024e3b345a77e3383b9923d0dbfa91"
      sha256 "720c5b2a0ed3e0cdd2ebec1cf20fdac141024e3b345a77e3383b9923d0dbfa91"
    end
  end

  def install
    bin.install "corectl" => "corectl-ng"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/corectl-ng version")
    assert_match "get", shell_output("#{bin}/corectl-ng --help")
  end
end
