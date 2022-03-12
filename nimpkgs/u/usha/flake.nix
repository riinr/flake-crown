{
  description = ''untitled shell history application'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."usha-master".url = "path:./master";
  inputs."usha-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."usha-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."usha-0_2".url = "path:./0_2";
  inputs."usha-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."usha-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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