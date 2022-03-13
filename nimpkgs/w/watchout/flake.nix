{
  description = ''⚡️ Just... yellin' for changes! File System Monitor for devs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."watchout-main".dir   = "main";
  inputs."watchout-main".owner = "nim-nix-pkgs";
  inputs."watchout-main".ref   = "master";
  inputs."watchout-main".repo  = "watchout";
  inputs."watchout-main".type  = "github";
  inputs."watchout-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."watchout-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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