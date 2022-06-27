{
  description = ''threadpools'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."threadpools-master".dir   = "master";
  inputs."threadpools-master".owner = "nim-nix-pkgs";
  inputs."threadpools-master".ref   = "master";
  inputs."threadpools-master".repo  = "threadpools";
  inputs."threadpools-master".type  = "github";
  inputs."threadpools-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."threadpools-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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