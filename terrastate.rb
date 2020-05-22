# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.5.0/darwin_amd64_terrastate"
      sha256 "db8c84aaccfb78c2a7a44f2c205dafa1d43130e74f03d8e7f2356f418b2434c2"
      version "1.5.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.5.0/linux_amd64_terrastate"
      sha256 "eeaf847ddc2ced7e91d03167259a97bfeb384027e898d85b4298c16b4f6a1150"
      version "1.5.0"
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