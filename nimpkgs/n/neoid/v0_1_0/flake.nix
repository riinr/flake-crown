{
  description = ''The Nim implementation of NanoID'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nanoid-v0_1_0.flake = false;
  inputs.src-nanoid-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-nanoid-v0_1_0.owner = "theAkito";
  inputs.src-nanoid-v0_1_0.repo  = "nim-neoid";
  inputs.src-nanoid-v0_1_0.type  = "github";
  
  inputs."random".owner = "nim-nix-pkgs";
  inputs."random".ref   = "master";
  inputs."random".repo  = "random";
  inputs."random".dir   = "v0_5_7";
  inputs."random".type  = "github";
  inputs."random".inputs.nixpkgs.follows = "nixpkgs";
  inputs."random".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nanoid-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nanoid-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}