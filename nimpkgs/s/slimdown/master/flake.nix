{
  description = ''Nim module that converts Markdown text to HTML using only regular expressions. Based on jbroadway's Slimdown.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-slimdown-master.flake = false;
  inputs.src-slimdown-master.owner = "ruivieira";
  inputs.src-slimdown-master.ref   = "refs/heads/master";
  inputs.src-slimdown-master.repo  = "nim-slimdown";
  inputs.src-slimdown-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-slimdown-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-slimdown-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}