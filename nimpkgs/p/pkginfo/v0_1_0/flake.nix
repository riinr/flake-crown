{
  description = ''A tiny utility package to extract Nimble information from any project'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pkginfo-v0_1_0.flake = false;
  inputs.src-pkginfo-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-pkginfo-v0_1_0.owner = "openpeep";
  inputs.src-pkginfo-v0_1_0.repo  = "pkginfo";
  inputs.src-pkginfo-v0_1_0.type  = "github";
  
  inputs."semver".owner = "nim-nix-pkgs";
  inputs."semver".ref   = "master";
  inputs."semver".repo  = "semver";
  inputs."semver".dir   = "v1_1_1";
  inputs."semver".type  = "github";
  inputs."semver".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pkginfo-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-pkginfo-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}