{
  description = ''Libarchive at compile-time, Libarchive Chibi Edition'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."libarchibi-master".dir   = "master";
  inputs."libarchibi-master".owner = "nim-nix-pkgs";
  inputs."libarchibi-master".ref   = "master";
  inputs."libarchibi-master".repo  = "libarchibi";
  inputs."libarchibi-master".type  = "github";
  inputs."libarchibi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libarchibi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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