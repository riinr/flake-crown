{
  description = ''Language Handler for executing Nim inside postgres as a procedural language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-plnim-v0_1_0.flake = false;
  inputs.src-plnim-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-plnim-v0_1_0.owner = "luisacosta828";
  inputs.src-plnim-v0_1_0.repo  = "plnim";
  inputs.src-plnim-v0_1_0.type  = "github";
  
  inputs."pgxcrown".owner = "nim-nix-pkgs";
  inputs."pgxcrown".ref   = "master";
  inputs."pgxcrown".repo  = "pgxcrown";
  inputs."pgxcrown".dir   = "v0_5_2";
  inputs."pgxcrown".type  = "github";
  inputs."pgxcrown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-plnim-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-plnim-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}