{
  description = ''Nim term rewriting system'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimtrs-master".dir   = "master";
  inputs."nimtrs-master".owner = "nim-nix-pkgs";
  inputs."nimtrs-master".ref   = "master";
  inputs."nimtrs-master".repo  = "nimtrs";
  inputs."nimtrs-master".type  = "github";
  inputs."nimtrs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtrs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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