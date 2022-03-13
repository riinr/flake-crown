{
  description = ''Parse fixed-width fields within lines of text (complementary to parsecsv)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."parsefixed-master".dir   = "master";
  inputs."parsefixed-master".owner = "nim-nix-pkgs";
  inputs."parsefixed-master".ref   = "master";
  inputs."parsefixed-master".repo  = "parsefixed";
  inputs."parsefixed-master".type  = "github";
  inputs."parsefixed-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsefixed-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsefixed-0_1_2".dir   = "0_1_2";
  inputs."parsefixed-0_1_2".owner = "nim-nix-pkgs";
  inputs."parsefixed-0_1_2".ref   = "master";
  inputs."parsefixed-0_1_2".repo  = "parsefixed";
  inputs."parsefixed-0_1_2".type  = "github";
  inputs."parsefixed-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsefixed-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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