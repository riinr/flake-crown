{
  description = ''A tiny utility package to extract Nimble information from any project'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pkginfo-main.flake = false;
  inputs.src-pkginfo-main.ref   = "refs/heads/main";
  inputs.src-pkginfo-main.owner = "openpeep";
  inputs.src-pkginfo-main.repo  = "pkginfo";
  inputs.src-pkginfo-main.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pkginfo-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-pkginfo-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}