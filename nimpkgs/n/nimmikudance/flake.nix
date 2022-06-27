{
  description = ''MMD I/O!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimmikudance-main".dir   = "main";
  inputs."nimmikudance-main".owner = "nim-nix-pkgs";
  inputs."nimmikudance-main".ref   = "master";
  inputs."nimmikudance-main".repo  = "nimmikudance";
  inputs."nimmikudance-main".type  = "github";
  inputs."nimmikudance-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimmikudance-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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