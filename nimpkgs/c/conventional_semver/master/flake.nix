{
  description = ''Calculate the next semver version given the git log and previous version'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-conventional_semver-master.flake = false;
  inputs.src-conventional_semver-master.ref   = "refs/heads/master";
  inputs.src-conventional_semver-master.owner = "SimplyZ";
  inputs.src-conventional_semver-master.repo  = "conventional_semver";
  inputs.src-conventional_semver-master.type  = "gitlab";
  
  inputs."semver".owner = "nim-nix-pkgs";
  inputs."semver".ref   = "master";
  inputs."semver".repo  = "semver";
  inputs."semver".dir   = "v1_1_1";
  inputs."semver".type  = "github";
  inputs."semver".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleparseopt".owner = "nim-nix-pkgs";
  inputs."simpleparseopt".ref   = "master";
  inputs."simpleparseopt".repo  = "simpleparseopt";
  inputs."simpleparseopt".dir   = "";
  inputs."simpleparseopt".type  = "github";
  inputs."simpleparseopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleparseopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-conventional_semver-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-conventional_semver-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}