{
  description = ''alignment is a library to align strings.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-alignment-1_1_0.flake = false;
  inputs.src-alignment-1_1_0.ref   = "refs/tags/1.1.0";
  inputs.src-alignment-1_1_0.owner = "jiro4989";
  inputs.src-alignment-1_1_0.repo  = "alignment";
  inputs.src-alignment-1_1_0.type  = "github";
  
  inputs."eastasianwidth".owner = "nim-nix-pkgs";
  inputs."eastasianwidth".ref   = "master";
  inputs."eastasianwidth".repo  = "eastasianwidth";
  inputs."eastasianwidth".dir   = "1_1_0";
  inputs."eastasianwidth".type  = "github";
  inputs."eastasianwidth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eastasianwidth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-alignment-1_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-alignment-1_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}