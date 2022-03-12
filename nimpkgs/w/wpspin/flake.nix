{
  description = ''Full-featured WPS PIN generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wpspin-master".url = "path:./master";
  inputs."wpspin-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wpspin-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wpspin-0_3_0".url = "path:./0_3_0";
  inputs."wpspin-0_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wpspin-0_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wpspin-0_5_0".url = "path:./0_5_0";
  inputs."wpspin-0_5_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wpspin-0_5_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wpspin-0_5_1".url = "path:./0_5_1";
  inputs."wpspin-0_5_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wpspin-0_5_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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