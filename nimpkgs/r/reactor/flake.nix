{
  description = ''Asynchronous networking engine for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."reactor-master".url = "path:./master";
  inputs."reactor-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_0_1".url = "path:./v0_0_1";
  inputs."reactor-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_3_0".url = "path:./v0_3_0";
  inputs."reactor-v0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_3_1".url = "path:./v0_3_1";
  inputs."reactor-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_3_2".url = "path:./v0_3_2";
  inputs."reactor-v0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_0".url = "path:./v0_4_0";
  inputs."reactor-v0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_1".url = "path:./v0_4_1";
  inputs."reactor-v0_4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_2".url = "path:./v0_4_2";
  inputs."reactor-v0_4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_3".url = "path:./v0_4_3";
  inputs."reactor-v0_4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_4".url = "path:./v0_4_4";
  inputs."reactor-v0_4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_5".url = "path:./v0_4_5";
  inputs."reactor-v0_4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_4_6".url = "path:./v0_4_6";
  inputs."reactor-v0_4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."reactor-v0_5_0".url = "path:./v0_5_0";
  inputs."reactor-v0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor-v0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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