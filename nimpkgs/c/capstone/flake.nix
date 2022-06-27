{
  description = ''Capstone3 high-level wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."capstone-master".dir   = "master";
  inputs."capstone-master".owner = "nim-nix-pkgs";
  inputs."capstone-master".ref   = "master";
  inputs."capstone-master".repo  = "capstone";
  inputs."capstone-master".type  = "github";
  inputs."capstone-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."capstone-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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