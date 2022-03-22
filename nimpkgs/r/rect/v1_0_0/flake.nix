{
  description = ''rect is a command to paste text rectangle.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rect-v1_0_0.flake = false;
  inputs.src-rect-v1_0_0.owner = "jiro4989";
  inputs.src-rect-v1_0_0.ref   = "v1_0_0";
  inputs.src-rect-v1_0_0.repo  = "rect";
  inputs.src-rect-v1_0_0.type  = "github";
  
  inputs."eastasianwidth".owner = "nim-nix-pkgs";
  inputs."eastasianwidth".ref   = "master";
  inputs."eastasianwidth".repo  = "eastasianwidth";
  inputs."eastasianwidth".dir   = "1_1_0";
  inputs."eastasianwidth".type  = "github";
  inputs."eastasianwidth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eastasianwidth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt".owner = "nim-nix-pkgs";
  inputs."docopt".ref   = "master";
  inputs."docopt".repo  = "docopt";
  inputs."docopt".dir   = "v0_6_8";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rect-v1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-rect-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}