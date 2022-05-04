{
  description = ''A unittest framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-testutils-0_4_0.flake = false;
  inputs.src-testutils-0_4_0.ref   = "refs/tags/0.4.0";
  inputs.src-testutils-0_4_0.owner = "status-im";
  inputs.src-testutils-0_4_0.repo  = "nim-testutils";
  inputs.src-testutils-0_4_0.type  = "github";
  
  inputs."unittest2".owner = "nim-nix-pkgs";
  inputs."unittest2".ref   = "master";
  inputs."unittest2".repo  = "unittest2";
  inputs."unittest2".dir   = "v0_0_3";
  inputs."unittest2".type  = "github";
  inputs."unittest2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unittest2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-testutils-0_4_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-testutils-0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}