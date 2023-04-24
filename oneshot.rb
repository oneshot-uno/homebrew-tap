# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Oneshot < Formula
  desc "A first first-come-first-serve, single-fire, feature-rich HTTP server. Easily transfer files to and from your terminal and any browser or HTTP client."
  homepage "https://github.com/oneshot-uno/oneshot"
  version "2.0.0-beta2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oneshot-uno/oneshot/releases/download/v2.0.0-beta2/oneshot_Darwin_arm64.tar.gz"
      sha256 "63611ebe49790a0577af34c8b4bd8f447b1e80286dfb8fc74c97a4d9cf7e7ecd"

      def install
        bin.install "oneshot"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/oneshot-uno/oneshot/releases/download/v2.0.0-beta2/oneshot_Darwin_x86_64.tar.gz"
      sha256 "16940dec970a1231ad7853447cfeeddb1c093d49068045bff83d6fd14c1f9d67"

      def install
        bin.install "oneshot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/oneshot-uno/oneshot/releases/download/v2.0.0-beta2/oneshot_Linux_arm64.tar.gz"
      sha256 "a7ef8e95c147bd98b233659ed463e38fa39887379cfaf40d4f80257229e26b44"

      def install
        bin.install "oneshot"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/oneshot-uno/oneshot/releases/download/v2.0.0-beta2/oneshot_Linux_x86_64.tar.gz"
      sha256 "cc0ec061f287c8b3e4347cb0965e84ca6ba2a552093b8a1d1245ae59eb967448"

      def install
        bin.install "oneshot"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/oneshot-uno/oneshot/releases/download/v2.0.0-beta2/oneshot_Linux_armv6.tar.gz"
      sha256 "e82114875f198580acf58e7bffa9d339155b4e7163de42a1e9961c1ce04c5628"

      def install
        bin.install "oneshot"
      end
    end
  end

  test do
    system "#{bin}/oneshot", "--version"
  end
end
