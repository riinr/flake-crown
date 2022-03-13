{
  description = ''Lazy evaluated sequences'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."lazyseq-main".dir   = "main";
  inputs."lazyseq-main".owner = "nim-nix-pkgs";
  inputs."lazyseq-main".ref   = "master";
  inputs."lazyseq-main".repo  = "lazyseq";
  inputs."lazyseq-main".type  = "github";
  inputs."lazyseq-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lazyseq-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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