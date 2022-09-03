{
  description = ''Micro benchmarking tool for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimbench-v0_2_0.flake = false;
  inputs.src-nimbench-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-nimbench-v0_2_0.owner = "ivankoster";
  inputs.src-nimbench-v0_2_0.repo  = "nimbench";
  inputs.src-nimbench-v0_2_0.type  = "github";
  
  inputs."strfmt".owner = "nim-nix-pkgs";
  inputs."strfmt".ref   = "master";
  inputs."strfmt".repo  = "strfmt";
  inputs."strfmt".dir   = "source";
  inputs."strfmt".type  = "github";
  inputs."strfmt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."strfmt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimbench-v0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimbench-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}