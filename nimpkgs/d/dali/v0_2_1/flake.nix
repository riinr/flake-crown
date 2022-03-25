{
  description = ''Dalvik Assembler/Linker'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dali-v0_2_1.flake = false;
  inputs.src-dali-v0_2_1.ref   = "refs/tags/v0.2.1";
  inputs.src-dali-v0_2_1.owner = "akavel";
  inputs.src-dali-v0_2_1.repo  = "dali";
  inputs.src-dali-v0_2_1.type  = "github";
  
  inputs."patty".owner = "nim-nix-pkgs";
  inputs."patty".ref   = "master";
  inputs."patty".repo  = "patty";
  inputs."patty".dir   = "0_3_3";
  inputs."patty".type  = "github";
  inputs."patty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dali-v0_2_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-dali-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}