{
  description = ''Surfing is a highly functional CLI for Base64.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."surfing-develop".url = "path:./develop";
  inputs."surfing-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."surfing-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."surfing-main".url = "path:./main";
  inputs."surfing-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."surfing-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."surfing-ver_0_1_0".url = "path:./ver_0_1_0";
  inputs."surfing-ver_0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."surfing-ver_0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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