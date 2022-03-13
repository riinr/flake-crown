{
  description = ''Nim Wrapper for LibGD 2.x'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim-libgd-master".dir   = "master";
  inputs."nim-libgd-master".owner = "nim-nix-pkgs";
  inputs."nim-libgd-master".ref   = "master";
  inputs."nim-libgd-master".repo  = "nim-libgd";
  inputs."nim-libgd-master".type  = "github";
  inputs."nim-libgd-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim-libgd-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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