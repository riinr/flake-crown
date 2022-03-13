{
  description = ''.NET-inspired lightweight terminal library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."conio-master".dir   = "master";
  inputs."conio-master".owner = "nim-nix-pkgs";
  inputs."conio-master".ref   = "master";
  inputs."conio-master".repo  = "conio";
  inputs."conio-master".type  = "github";
  inputs."conio-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."conio-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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