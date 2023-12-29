# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/2.0.0/darwin_amd64_terrastate"
      sha256 "3b24720fa6b5d42dda26181959fd13e2545eac8e6d5572e2022ef616aea92a7e"
      version "2.0.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/2.0.0/linux_amd64_terrastate"
      sha256 "aaf8d0d2742985b39a21895076cd81ff3065b59b4e4f219d21adb0ac53ad6c46"
      version "2.0.0"
    end

    def install
      if OS.mac?
        bin.install "darwin_amd64_terrastate"
        mv bin/"darwin_amd64_terrastate", bin/"terrastate"
      elsif OS.linux?
        bin.install "linux_amd64_terrastate"
        mv bin/"linux_amd64_terrastate", bin/"terrastate"
      end
    end
  
    test do
      system "false"
    end
  end