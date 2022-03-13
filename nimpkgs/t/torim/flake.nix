{
  description = ''Updated version of tor.nim from https://github.com/FedericoCeratto/nim-tor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."torim-master".dir   = "master";
  inputs."torim-master".owner = "nim-nix-pkgs";
  inputs."torim-master".ref   = "master";
  inputs."torim-master".repo  = "torim";
  inputs."torim-master".type  = "github";
  inputs."torim-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."torim-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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