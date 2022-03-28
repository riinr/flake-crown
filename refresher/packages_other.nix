{lib, ...}:
let
  GH = "https://github.com";
  sources = {
    github.disruptek.badresults.description = "a simpler and less fascist fork of nim-result";
    github.disruptek.badresults.license = "MIT";
    github.disruptek.badresults.method = "git";
    github.disruptek.badresults.tags = ["library" "result" "errors" "functional"];
    github.disruptek.badresults.url = "${GH}/disruptek/badresults";
    github.disruptek.balls.description = "a unittest framework with balls 🔴🟡🟢";
    github.disruptek.balls.license = "MIT";
    github.disruptek.balls.method = "git";
    github.disruptek.balls.tags = ["unittest"];
    github.disruptek.balls.url = "${GH}/disruptek/balls";
    github.disruptek.cutelog.description = "A stylish little logger to replace echo in command-line apps";
    github.disruptek.cutelog.doc = "https://disruptek.github.io/cutelog/cutelog.html";
    github.disruptek.cutelog.license = "MIT";
    github.disruptek.cutelog.method = "git";
    github.disruptek.cutelog.tags = ["log" "echo"];
    github.disruptek.cutelog.url = "${GH}/disruptek/cutelog";
    github.disruptek.cutelog.web = "${GH}/disruptek/cutelog";
    github.disruptek.gittyup.description = "higher-level libgit2 bindings";
    github.disruptek.gittyup.license = "MIT";
    github.disruptek.gittyup.method = "git";
    github.disruptek.gittyup.tags = ["git"];
    github.disruptek.gittyup.url = "${GH}/disruptek/gittyup";
    github.disruptek.grok.description = "don't read too much into it";
    github.disruptek.grok.license = "MIT";
    github.disruptek.grok.method = "git";
    github.disruptek.grok.tags = ["gear"];
    github.disruptek.grok.url = "${GH}/disruptek/grok";
    github.disruptek.nim-terminaltables.description = "terminal tables";
    github.disruptek.nim-terminaltables.license = "BSD-3-Clause";
    github.disruptek.nim-terminaltables.method = "git";
    github.disruptek.nim-terminaltables.tags = ["terminal" "tables" "ascii" "unicode"];
    github.disruptek.nim-terminaltables.url = "${GH}/disruptek/nim-terminaltables";
    github.disruptek.ups.description = "a package handler";
    github.disruptek.ups.license = "MIT";
    github.disruptek.ups.method = "git";
    github.disruptek.ups.tags = ["packages"];
    github.disruptek.ups.url = "${GH}/disruptek/ups";
    github.haxscramper.hlibssh2.description = "Nim wrapper for libssh2 library";
    github.haxscramper.hlibssh2.license = "Apache-2.0";
    github.haxscramper.hlibssh2.method = "git";
    github.haxscramper.hlibssh2.tags = ["ssh"];
    github.haxscramper.hlibssh2.pkgs = ["libssh2"];
    github.haxscramper.hlibssh2.url = "${GH}/haxscramper/hlibssh2";
    github.haxscramper.hlibgit2.description = "Nim wrapper for libgit2 library";
    github.haxscramper.hlibgit2.license = "Apache-2.0";
    github.haxscramper.hlibgit2.method = "git";
    github.haxscramper.hlibgit2.tags = ["git"];
    github.haxscramper.hlibgit2.pkgs = ["libgit2"];
    github.haxscramper.hlibgit2.url = "${GH}/haxscramper/hlibgit2";
  };
in 
{
  files.json."/refresher/packages_other.json" = 
  let 
    nameIt = src: author: pkg: info: info // {name = "${src}-${author}-${pkg}";};
    fromAuthor = src: author: pkgs: lib.mapAttrsToList (nameIt src author) pkgs;
    fromSource = src: authors: lib.mapAttrsToList (fromAuthor src) authors;
    fromSources = lib.mapAttrsToList fromSource;
  in lib.lists.flatten (fromSources sources);
}
