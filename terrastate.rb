# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.3.0/darwin_amd64_terrastate"
      sha256 "d1731080f3a1a24aa4e10ff3b56a92e1f6ed615746edb8611daa1c4123d49d4f"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.3.0/linux_amd64_terrastate"
      sha256 "949fb6b0428baf92dfc80ad0ced202fb4c0e76c9ef55df8dc300a0bd248b8060"
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