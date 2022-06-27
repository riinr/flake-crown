{
  description = ''cps'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cps-0_0_1.flake = false;
  inputs.src-cps-0_0_1.ref   = "refs/tags/0.0.1";
  inputs.src-cps-0_0_1.owner = "disruptek";
  inputs.src-cps-0_0_1.repo  = "cps";
  inputs.src-cps-0_0_1.type  = "github";
  
  inputs."diffoutput".owner = "nim-nix-pkgs";
  inputs."diffoutput".ref   = "master";
  inputs."diffoutput".repo  = "diffoutput";
  inputs."diffoutput".dir   = "v0_1_2";
  inputs."diffoutput".type  = "github";
  inputs."diffoutput".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diffoutput".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cps-0_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-cps-0_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}