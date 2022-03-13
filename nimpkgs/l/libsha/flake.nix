{
  description = ''Sha1 and Sha2 implementations'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libsha-master".dir   = "master";
  inputs."libsha-master".owner = "nim-nix-pkgs";
  inputs."libsha-master".ref   = "master";
  inputs."libsha-master".repo  = "libsha";
  inputs."libsha-master".type  = "github";
  inputs."libsha-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsha-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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