{
  description = ''alignment is a library to align strings.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-alignment-v1_2_1.flake = false;
  inputs.src-alignment-v1_2_1.ref   = "refs/tags/v1.2.1";
  inputs.src-alignment-v1_2_1.owner = "jiro4989";
  inputs.src-alignment-v1_2_1.repo  = "alignment";
  inputs.src-alignment-v1_2_1.type  = "github";
  
  inputs."eastasianwidth".owner = "nim-nix-pkgs";
  inputs."eastasianwidth".ref   = "master";
  inputs."eastasianwidth".repo  = "eastasianwidth";
  inputs."eastasianwidth".dir   = "1_1_0";
  inputs."eastasianwidth".type  = "github";
  inputs."eastasianwidth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eastasianwidth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-alignment-v1_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-alignment-v1_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}