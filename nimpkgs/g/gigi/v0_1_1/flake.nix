{
  description = ''GitIgnore Generation Interface'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gigi-v0_1_1.flake = false;
  inputs.src-gigi-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-gigi-v0_1_1.owner = "attakei";
  inputs.src-gigi-v0_1_1.repo  = "gigi";
  inputs.src-gigi-v0_1_1.type  = "github";
  
  inputs."puppy".owner = "nim-nix-pkgs";
  inputs."puppy".ref   = "master";
  inputs."puppy".repo  = "puppy";
  inputs."puppy".dir   = "1_6_0";
  inputs."puppy".type  = "github";
  inputs."puppy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gigi-v0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-gigi-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}