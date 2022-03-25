{
  description = ''GoogleAPI - Growing collection of google APIs for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-googleapi-0_1_2.flake = false;
  inputs.src-googleapi-0_1_2.ref   = "refs/tags/0.1.2";
  inputs.src-googleapi-0_1_2.owner = "treeform";
  inputs.src-googleapi-0_1_2.repo  = "googleapi";
  inputs.src-googleapi-0_1_2.type  = "github";
  
  inputs."jwt".owner = "nim-nix-pkgs";
  inputs."jwt".ref   = "master";
  inputs."jwt".repo  = "jwt";
  inputs."jwt".dir   = "master";
  inputs."jwt".type  = "github";
  inputs."jwt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jwt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-googleapi-0_1_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-googleapi-0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}