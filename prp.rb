# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Prp < Formula
  desc "A simple package backup manager CLI tool that restores your brew packages to a previously saved state point"
  homepage "https://prp.io/"
  version "0.10"
  depends_on :macos

  on_macos do
    url "https://github.com/Liopun/prp/releases/download/v0.10/prp_0.10_Darwin_x86_64.tar.gz"
    sha256 "16f1aa14660825c9a0098c46db00ba165d02db0066f7fe3a98157c8bbd37ffc8"

    def install
      bin.install "prp"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Prp
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end
end
