{
  description = ''Asynchronous docker client written by Nim-lang'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asyncdocker-master".dir   = "master";
  inputs."asyncdocker-master".owner = "nim-nix-pkgs";
  inputs."asyncdocker-master".ref   = "master";
  inputs."asyncdocker-master".repo  = "asyncdocker";
  inputs."asyncdocker-master".type  = "github";
  inputs."asyncdocker-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncdocker-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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