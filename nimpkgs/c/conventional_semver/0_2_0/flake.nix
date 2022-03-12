{
  description = ''Calculate the next semver version given the git log and previous version'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-conventional_semver-0_2_0.flake = false;
  inputs.src-conventional_semver-0_2_0.owner = "SimplyZ";
  inputs.src-conventional_semver-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-conventional_semver-0_2_0.repo  = "conventional_semver";
  inputs.src-conventional_semver-0_2_0.type  = "gitlab";
  
  inputs."semver".dir   = "nimpkgs/s/semver";
  inputs."semver".owner = "riinr";
  inputs."semver".ref   = "flake-pinning";
  inputs."semver".repo  = "flake-nimble";
  inputs."semver".type  = "github";
  inputs."semver".inputs.nixpkgs.follows = "nixpkgs";
  inputs."semver".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."simpleparseopt".dir   = "nimpkgs/s/simpleparseopt";
  inputs."simpleparseopt".owner = "riinr";
  inputs."simpleparseopt".ref   = "flake-pinning";
  inputs."simpleparseopt".repo  = "flake-nimble";
  inputs."simpleparseopt".type  = "github";
  inputs."simpleparseopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simpleparseopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-conventional_semver-0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-conventional_semver-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}