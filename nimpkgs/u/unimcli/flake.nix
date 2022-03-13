{
  description = ''User-friendly nimcli.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."unimcli-master".dir   = "master";
  inputs."unimcli-master".owner = "nim-nix-pkgs";
  inputs."unimcli-master".ref   = "master";
  inputs."unimcli-master".repo  = "unimcli";
  inputs."unimcli-master".type  = "github";
  inputs."unimcli-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unimcli-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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