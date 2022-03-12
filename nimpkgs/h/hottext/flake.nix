{
  description = ''Rapid serial text presenter'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."hottext-v1_2".url = "path:./v1_2";
  inputs."hottext-v1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hottext-v1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hottext-v1_3".url = "path:./v1_3";
  inputs."hottext-v1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hottext-v1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hottext-v1_4".url = "path:./v1_4";
  inputs."hottext-v1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hottext-v1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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