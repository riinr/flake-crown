{
  description = ''Convert big numbers to what's pleasant to see (an adorable, little girl, perhaps?) ... in Nim!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."millie-master".dir   = "master";
  inputs."millie-master".owner = "nim-nix-pkgs";
  inputs."millie-master".ref   = "master";
  inputs."millie-master".repo  = "millie";
  inputs."millie-master".type  = "github";
  inputs."millie-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."millie-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."millie-0_1_0".dir   = "0_1_0";
  inputs."millie-0_1_0".owner = "nim-nix-pkgs";
  inputs."millie-0_1_0".ref   = "master";
  inputs."millie-0_1_0".repo  = "millie";
  inputs."millie-0_1_0".type  = "github";
  inputs."millie-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."millie-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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