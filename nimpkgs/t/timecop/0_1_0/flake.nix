{
  description = ''Time travelling for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-timecop-0_1_0.flake = false;
  inputs.src-timecop-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-timecop-0_1_0.owner = "ba0f3";
  inputs.src-timecop-0_1_0.repo  = "timecop.nim";
  inputs.src-timecop-0_1_0.type  = "github";
  
  inputs."subhook".owner = "nim-nix-pkgs";
  inputs."subhook".ref   = "master";
  inputs."subhook".repo  = "subhook";
  inputs."subhook".dir   = "0_5_5";
  inputs."subhook".type  = "github";
  inputs."subhook".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-timecop-0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-timecop-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}