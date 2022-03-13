{
  description = ''A simple library for paging, similar to less'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pager-master".dir   = "master";
  inputs."pager-master".owner = "nim-nix-pkgs";
  inputs."pager-master".ref   = "master";
  inputs."pager-master".repo  = "pager";
  inputs."pager-master".type  = "github";
  inputs."pager-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pager-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}