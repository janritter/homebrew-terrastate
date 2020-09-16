# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.7.0/darwin_amd64_terrastate"
      sha256 "310e2e9bc4fdb6be9c529bcd53738ebb96a48d62bff92622c8f89f9f684c7174"
      version "1.7.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.7.0/linux_amd64_terrastate"
      sha256 "08a8f14c2fa8dad5b884288fbfcd8e553cbfe39a3a4bf88eb9fbcf838f965584"
      version "1.7.0"
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