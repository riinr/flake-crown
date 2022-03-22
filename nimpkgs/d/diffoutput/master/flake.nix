{
  description = ''Collection of Diff stringifications (and reversals)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-diffoutput-master.flake = false;
  inputs.src-diffoutput-master.owner = "JohnAD";
  inputs.src-diffoutput-master.ref   = "master";
  inputs.src-diffoutput-master.repo  = "diffoutput";
  inputs.src-diffoutput-master.type  = "github";
  
  inputs."diff".owner = "nim-nix-pkgs";
  inputs."diff".ref   = "master";
  inputs."diff".repo  = "diff";
  inputs."diff".dir   = "0_5_0";
  inputs."diff".type  = "github";
  inputs."diff".inputs.nixpkgs.follows = "nixpkgs";
  inputs."diff".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-diffoutput-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-diffoutput-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}