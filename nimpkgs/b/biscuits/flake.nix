{
  description = ''better cookie handling'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."biscuits-master".dir   = "master";
  inputs."biscuits-master".owner = "nim-nix-pkgs";
  inputs."biscuits-master".ref   = "master";
  inputs."biscuits-master".repo  = "biscuits";
  inputs."biscuits-master".type  = "github";
  inputs."biscuits-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."biscuits-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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