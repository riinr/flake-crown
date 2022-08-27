{
  description = ''JSON-Binding for deser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."deser_json-master".dir   = "master";
  inputs."deser_json-master".owner = "nim-nix-pkgs";
  inputs."deser_json-master".ref   = "master";
  inputs."deser_json-master".repo  = "deser_json";
  inputs."deser_json-master".type  = "github";
  inputs."deser_json-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser_json-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser_json-v0_1_0".dir   = "v0_1_0";
  inputs."deser_json-v0_1_0".owner = "nim-nix-pkgs";
  inputs."deser_json-v0_1_0".ref   = "master";
  inputs."deser_json-v0_1_0".repo  = "deser_json";
  inputs."deser_json-v0_1_0".type  = "github";
  inputs."deser_json-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser_json-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser_json-v0_1_1".dir   = "v0_1_1";
  inputs."deser_json-v0_1_1".owner = "nim-nix-pkgs";
  inputs."deser_json-v0_1_1".ref   = "master";
  inputs."deser_json-v0_1_1".repo  = "deser_json";
  inputs."deser_json-v0_1_1".type  = "github";
  inputs."deser_json-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser_json-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser_json-v0_1_1-1".dir   = "v0_1_1-1";
  inputs."deser_json-v0_1_1-1".owner = "nim-nix-pkgs";
  inputs."deser_json-v0_1_1-1".ref   = "master";
  inputs."deser_json-v0_1_1-1".repo  = "deser_json";
  inputs."deser_json-v0_1_1-1".type  = "github";
  inputs."deser_json-v0_1_1-1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser_json-v0_1_1-1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."deser_json-v0_1_2".dir   = "v0_1_2";
  inputs."deser_json-v0_1_2".owner = "nim-nix-pkgs";
  inputs."deser_json-v0_1_2".ref   = "master";
  inputs."deser_json-v0_1_2".repo  = "deser_json";
  inputs."deser_json-v0_1_2".type  = "github";
  inputs."deser_json-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."deser_json-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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