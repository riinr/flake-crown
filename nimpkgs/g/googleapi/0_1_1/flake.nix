{
  description = ''GoogleAPI - Growing collection of google APIs for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-googleapi-0_1_1.flake = false;
  inputs.src-googleapi-0_1_1.ref   = "refs/tags/0.1.1";
  inputs.src-googleapi-0_1_1.owner = "treeform";
  inputs.src-googleapi-0_1_1.repo  = "googleapi";
  inputs.src-googleapi-0_1_1.type  = "github";
  
  inputs."quickjwt".owner = "nim-nix-pkgs";
  inputs."quickjwt".ref   = "master";
  inputs."quickjwt".repo  = "quickjwt";
  inputs."quickjwt".dir   = "v0_2_1";
  inputs."quickjwt".type  = "github";
  inputs."quickjwt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."quickjwt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-googleapi-0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-googleapi-0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}