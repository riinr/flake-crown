{
  description = ''OPDS ebook server'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tsundoku-v0_1_0.flake = false;
  inputs.src-tsundoku-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-tsundoku-v0_1_0.owner = "FedericoCeratto";
  inputs.src-tsundoku-v0_1_0.repo  = "tsundoku";
  inputs.src-tsundoku-v0_1_0.type  = "github";
  
  inputs."jester".owner = "nim-nix-pkgs";
  inputs."jester".ref   = "master";
  inputs."jester".repo  = "jester";
  inputs."jester".dir   = "v0_5_0";
  inputs."jester".type  = "github";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tsundoku-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-tsundoku-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}