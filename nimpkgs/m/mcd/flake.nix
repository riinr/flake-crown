{
  description = ''Application to detect which commit generates malicious code detection by antivirus software.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mcd-develop".url = "path:./develop";
  inputs."mcd-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcd-master".url = "path:./master";
  inputs."mcd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcd-0_1_0".url = "path:./0_1_0";
  inputs."mcd-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcd-0_2_0".url = "path:./0_2_0";
  inputs."mcd-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcd-0_3_0".url = "path:./0_3_0";
  inputs."mcd-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcd-0_3_1".url = "path:./0_3_1";
  inputs."mcd-0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mcd-0_3_2".url = "path:./0_3_2";
  inputs."mcd-0_3_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcd-0_3_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}