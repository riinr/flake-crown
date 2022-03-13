{
  description = ''A wrapper for libu2f, a library for FIDO/U2F'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libu2f-master".dir   = "master";
  inputs."libu2f-master".owner = "nim-nix-pkgs";
  inputs."libu2f-master".ref   = "master";
  inputs."libu2f-master".repo  = "libu2f";
  inputs."libu2f-master".type  = "github";
  inputs."libu2f-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libu2f-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libu2f-0_1_1".dir   = "0_1_1";
  inputs."libu2f-0_1_1".owner = "nim-nix-pkgs";
  inputs."libu2f-0_1_1".ref   = "master";
  inputs."libu2f-0_1_1".repo  = "libu2f";
  inputs."libu2f-0_1_1".type  = "github";
  inputs."libu2f-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libu2f-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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