{
  description = ''Transparently declare single-set attributes on types.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."finals-master".dir   = "master";
  inputs."finals-master".owner = "nim-nix-pkgs";
  inputs."finals-master".ref   = "master";
  inputs."finals-master".repo  = "finals";
  inputs."finals-master".type  = "github";
  inputs."finals-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finals-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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