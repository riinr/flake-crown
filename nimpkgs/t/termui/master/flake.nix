{
  description = ''Simple UI components for the terminal.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-termui-master.flake = false;
  inputs.src-termui-master.owner = "jjv360";
  inputs.src-termui-master.ref   = "refs/heads/master";
  inputs.src-termui-master.repo  = "nim-termui";
  inputs.src-termui-master.type  = "github";
  
  inputs."classes".dir   = "nimpkgs/c/classes";
  inputs."classes".owner = "riinr";
  inputs."classes".ref   = "flake-pinning";
  inputs."classes".repo  = "flake-nimble";
  inputs."classes".type  = "github";
  inputs."classes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."classes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."elvis".dir   = "nimpkgs/e/elvis";
  inputs."elvis".owner = "riinr";
  inputs."elvis".ref   = "flake-pinning";
  inputs."elvis".repo  = "flake-nimble";
  inputs."elvis".type  = "github";
  inputs."elvis".inputs.nixpkgs.follows = "nixpkgs";
  inputs."elvis".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-termui-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-termui-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}