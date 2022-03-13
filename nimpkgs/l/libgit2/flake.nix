{
  description = ''Libgit2 low level wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libgit2-master".dir   = "master";
  inputs."libgit2-master".owner = "nim-nix-pkgs";
  inputs."libgit2-master".ref   = "master";
  inputs."libgit2-master".repo  = "libgit2";
  inputs."libgit2-master".type  = "github";
  inputs."libgit2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libgit2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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