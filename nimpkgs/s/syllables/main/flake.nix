{
  description = ''Syllable estimation for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-syllables-main.flake = false;
  inputs.src-syllables-main.ref   = "refs/heads/main";
  inputs.src-syllables-main.owner = "tonogram";
  inputs.src-syllables-main.repo  = "nim-syllables";
  inputs.src-syllables-main.type  = "github";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".dir   = "v0_19_0";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."balls".owner = "nim-nix-pkgs";
  inputs."balls".ref   = "master";
  inputs."balls".repo  = "balls";
  inputs."balls".dir   = "";
  inputs."balls".type  = "github";
  inputs."balls".inputs.nixpkgs.follows = "nixpkgs";
  inputs."balls".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-syllables-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-syllables-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}