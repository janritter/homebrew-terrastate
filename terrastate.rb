# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.11.3/darwin_amd64_terrastate"
      sha256 "2fc3566b61da95319c23f7ba27f9f1d692b6ef95384be1d4fb129b2692947cf7"
      version "1.11.3"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.11.3/linux_amd64_terrastate"
      sha256 "2f7e6fc427ffa047086c7d4035565e952d097a9290539fae333ddae2cb64d961"
      version "1.11.3"
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