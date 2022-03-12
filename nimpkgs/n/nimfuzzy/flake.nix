{
  description = ''Fuzzy search wrapper for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimfuzzy-master".url = "path:./master";
  inputs."nimfuzzy-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzzy-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzzy-v0_1_0".url = "path:./v0_1_0";
  inputs."nimfuzzy-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzzy-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzzy-v0_1_2".url = "path:./v0_1_2";
  inputs."nimfuzzy-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzzy-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzzy-v0_1_3".url = "path:./v0_1_3";
  inputs."nimfuzzy-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzzy-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzzy-v0_1_4".url = "path:./v0_1_4";
  inputs."nimfuzzy-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzzy-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimfuzzy-v0_1_5".url = "path:./v0_1_5";
  inputs."nimfuzzy-v0_1_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimfuzzy-v0_1_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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