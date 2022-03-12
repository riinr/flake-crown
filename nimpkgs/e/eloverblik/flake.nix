{
  description = ''API for www.eloverblik.dk'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."eloverblik-master".url = "path:./master";
  inputs."eloverblik-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eloverblik-v0_0_1".url = "path:./v0_0_1";
  inputs."eloverblik-v0_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eloverblik-v0_0_2".url = "path:./v0_0_2";
  inputs."eloverblik-v0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eloverblik-v0_0_4".url = "path:./v0_0_4";
  inputs."eloverblik-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eloverblik-v0_0_5".url = "path:./v0_0_5";
  inputs."eloverblik-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eloverblik-v0_0_6".url = "path:./v0_0_6";
  inputs."eloverblik-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."eloverblik-v0_0_7".url = "path:./v0_0_7";
  inputs."eloverblik-v0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eloverblik-v0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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