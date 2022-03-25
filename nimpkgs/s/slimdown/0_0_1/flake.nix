{
  description = ''Nim module that converts Markdown text to HTML using only regular expressions. Based on jbroadway's Slimdown.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-slimdown-0_0_1.flake = false;
  inputs.src-slimdown-0_0_1.ref   = "refs/tags/0.0.1";
  inputs.src-slimdown-0_0_1.owner = "ruivieira";
  inputs.src-slimdown-0_0_1.repo  = "nim-slimdown";
  inputs.src-slimdown-0_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-slimdown-0_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-slimdown-0_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}