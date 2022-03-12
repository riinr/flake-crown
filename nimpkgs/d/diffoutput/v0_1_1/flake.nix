{
  description = ''Collection of Diff stringifications (and reversals)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-diffoutput-v0_1_1.flake = false;
  inputs.src-diffoutput-v0_1_1.owner = "JohnAD";
  inputs.src-diffoutput-v0_1_1.ref   = "refs/tags/v0.1.1";
  inputs.src-diffoutput-v0_1_1.repo  = "diffoutput";
  inputs.src-diffoutput-v0_1_1.type  = "github";
  
  inputs."diff".owner = "nim-nix-pkgs";
  inputs."diff".ref   = "master";
  inputs."diff".repo  = "diff";
  inputs."diff".type  = "github";
  inputs."diff".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-diffoutput-v0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-diffoutput-v0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}