{
  description = ''packedjson is an alternative Nim implementation for JSON. The JSON is essentially kept as a single string in order to save memory over a more traditional tree representation.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."packedjson-master".dir   = "master";
  inputs."packedjson-master".owner = "nim-nix-pkgs";
  inputs."packedjson-master".ref   = "master";
  inputs."packedjson-master".repo  = "packedjson";
  inputs."packedjson-master".type  = "github";
  inputs."packedjson-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."packedjson-0_1_0".dir   = "0_1_0";
  inputs."packedjson-0_1_0".owner = "nim-nix-pkgs";
  inputs."packedjson-0_1_0".ref   = "master";
  inputs."packedjson-0_1_0".repo  = "packedjson";
  inputs."packedjson-0_1_0".type  = "github";
  inputs."packedjson-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."packedjson-0_2_1".dir   = "0_2_1";
  inputs."packedjson-0_2_1".owner = "nim-nix-pkgs";
  inputs."packedjson-0_2_1".ref   = "master";
  inputs."packedjson-0_2_1".repo  = "packedjson";
  inputs."packedjson-0_2_1".type  = "github";
  inputs."packedjson-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."packedjson-0_2_2".dir   = "0_2_2";
  inputs."packedjson-0_2_2".owner = "nim-nix-pkgs";
  inputs."packedjson-0_2_2".ref   = "master";
  inputs."packedjson-0_2_2".repo  = "packedjson";
  inputs."packedjson-0_2_2".type  = "github";
  inputs."packedjson-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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