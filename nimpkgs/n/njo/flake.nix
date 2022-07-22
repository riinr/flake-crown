{
  description = ''A small utility to create JSON objects written in Nim. This is inspired by jpmens/jo.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."njo-main".dir   = "main";
  inputs."njo-main".owner = "nim-nix-pkgs";
  inputs."njo-main".ref   = "master";
  inputs."njo-main".repo  = "njo";
  inputs."njo-main".type  = "github";
  inputs."njo-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."njo-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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