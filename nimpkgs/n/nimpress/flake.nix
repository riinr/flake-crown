{
  description = ''Fast and simple calculation of polygenic scores'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpress-develop".url = "path:./develop";
  inputs."nimpress-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpress-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpress-master".url = "path:./master";
  inputs."nimpress-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpress-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpress-v1_0_0".url = "path:./v1_0_0";
  inputs."nimpress-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpress-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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