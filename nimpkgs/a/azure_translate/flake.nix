{
  description = ''Nim Library for Azure Cognitive Services Translate'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."azure_translate-master".dir   = "master";
  inputs."azure_translate-master".owner = "nim-nix-pkgs";
  inputs."azure_translate-master".ref   = "master";
  inputs."azure_translate-master".repo  = "azure_translate";
  inputs."azure_translate-master".type  = "github";
  inputs."azure_translate-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."azure_translate-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."azure_translate-v0_3_0".dir   = "v0_3_0";
  inputs."azure_translate-v0_3_0".owner = "nim-nix-pkgs";
  inputs."azure_translate-v0_3_0".ref   = "master";
  inputs."azure_translate-v0_3_0".repo  = "azure_translate";
  inputs."azure_translate-v0_3_0".type  = "github";
  inputs."azure_translate-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."azure_translate-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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