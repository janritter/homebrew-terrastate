# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.5.0/darwin_amd64_terrastate"
      sha256 "db5332f30a2e66c8542f933d6d00b3b171570899606c2f950d0f70dfb69ba486"
      version "1.5.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.5.0/linux_amd64_terrastate"
      sha256 "10fbbd9653aa9f22191c062ee57b7b4ec3926182da8abf926973f0b20fabfd35"
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