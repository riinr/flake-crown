{
  description = ''Transport Services Interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."taps-0_2_1".url = "path:./0_2_1";
  inputs."taps-0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taps-0_2_2".url = "path:./0_2_2";
  inputs."taps-0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taps-v0_1_0".url = "path:./v0_1_0";
  inputs."taps-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taps-v0_2_0".url = "path:./v0_2_0";
  inputs."taps-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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