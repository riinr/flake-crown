{
  description = ''a couchDB client written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mycouch-0_4_0.flake = false;
  inputs.src-mycouch-0_4_0.ref   = "refs/tags/0.4.0";
  inputs.src-mycouch-0_4_0.owner = "hamidb80";
  inputs.src-mycouch-0_4_0.repo  = "mycouch";
  inputs.src-mycouch-0_4_0.type  = "github";
  
  inputs."macroutils".owner = "nim-nix-pkgs";
  inputs."macroutils".ref   = "master";
  inputs."macroutils".repo  = "macroutils";
  inputs."macroutils".dir   = "v1_2_0";
  inputs."macroutils".type  = "github";
  inputs."macroutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."macroplus".owner = "nim-nix-pkgs";
  inputs."macroplus".ref   = "master";
  inputs."macroplus".repo  = "macroplus";
  inputs."macroplus".dir   = "0_2_3";
  inputs."macroplus".type  = "github";
  inputs."macroplus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-hamidb80-nimcoverage".owner = "nim-nix-pkgs";
  inputs."github-hamidb80-nimcoverage".ref   = "master";
  inputs."github-hamidb80-nimcoverage".repo  = "github-hamidb80-nimcoverage";
  inputs."github-hamidb80-nimcoverage".dir   = "master";
  inputs."github-hamidb80-nimcoverage".type  = "github";
  inputs."github-hamidb80-nimcoverage".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-hamidb80-nimcoverage".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mycouch-0_4_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-mycouch-0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}