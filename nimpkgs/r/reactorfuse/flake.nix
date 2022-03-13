{
  description = ''Filesystem in userspace (FUSE) for Nim (for reactor.nim library)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."reactorfuse-master".dir   = "master";
  inputs."reactorfuse-master".owner = "nim-nix-pkgs";
  inputs."reactorfuse-master".ref   = "master";
  inputs."reactorfuse-master".repo  = "reactorfuse";
  inputs."reactorfuse-master".type  = "github";
  inputs."reactorfuse-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactorfuse-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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