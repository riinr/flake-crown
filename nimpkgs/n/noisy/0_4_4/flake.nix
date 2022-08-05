{
  description = ''Nim implementation of various noise types.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-noisy-0_4_4.flake = false;
  inputs.src-noisy-0_4_4.ref   = "refs/tags/0.4.4";
  inputs.src-noisy-0_4_4.owner = "guzba";
  inputs.src-noisy-0_4_4.repo  = "noisy";
  inputs.src-noisy-0_4_4.type  = "github";
  
  inputs."nimsimd".owner = "nim-nix-pkgs";
  inputs."nimsimd".ref   = "master";
  inputs."nimsimd".repo  = "nimsimd";
  inputs."nimsimd".dir   = "1_2_0";
  inputs."nimsimd".type  = "github";
  inputs."nimsimd".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsimd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-noisy-0_4_4"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-noisy-0_4_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}