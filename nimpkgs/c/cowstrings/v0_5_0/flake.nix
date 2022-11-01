{
  description = ''Copy-On-Write string implementation according to nim-lang/RFCs#221'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cowstrings-v0_5_0.flake = false;
  inputs.src-cowstrings-v0_5_0.ref   = "refs/tags/v0.5.0";
  inputs.src-cowstrings-v0_5_0.owner = "planetis-m";
  inputs.src-cowstrings-v0_5_0.repo  = "cowstrings";
  inputs.src-cowstrings-v0_5_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cowstrings-v0_5_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-cowstrings-v0_5_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}