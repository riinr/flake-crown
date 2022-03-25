{
  description = ''Nim Wrapper for LibGD 2.x'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libgd-master".dir   = "master";
  inputs."libgd-master".owner = "nim-nix-pkgs";
  inputs."libgd-master".ref   = "master";
  inputs."libgd-master".repo  = "libgd";
  inputs."libgd-master".type  = "github";
  inputs."libgd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libgd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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