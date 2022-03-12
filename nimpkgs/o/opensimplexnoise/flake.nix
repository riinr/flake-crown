{
  description = ''A pure nim port of the open simplex noise algorithm from Kurt Spencer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."opensimplexnoise-main".url = "path:./main";
  inputs."opensimplexnoise-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opensimplexnoise-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opensimplexnoise-0_1_0".url = "path:./0_1_0";
  inputs."opensimplexnoise-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opensimplexnoise-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opensimplexnoise-0_2_0".url = "path:./0_2_0";
  inputs."opensimplexnoise-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opensimplexnoise-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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