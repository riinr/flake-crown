{
  description = ''encode/decode variants to/from uint64'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."variantkey-master".dir   = "master";
  inputs."variantkey-master".owner = "nim-nix-pkgs";
  inputs."variantkey-master".ref   = "master";
  inputs."variantkey-master".repo  = "variantkey";
  inputs."variantkey-master".type  = "github";
  inputs."variantkey-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."variantkey-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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