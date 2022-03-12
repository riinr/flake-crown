{
  description = ''alignment is a library to align strings.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-alignment-v1_1_2.flake = false;
  inputs.src-alignment-v1_1_2.owner = "jiro4989";
  inputs.src-alignment-v1_1_2.ref   = "refs/tags/v1.1.2";
  inputs.src-alignment-v1_1_2.repo  = "alignment";
  inputs.src-alignment-v1_1_2.type  = "github";
  
  inputs."eastasianwidth".dir   = "nimpkgs/e/eastasianwidth";
  inputs."eastasianwidth".owner = "riinr";
  inputs."eastasianwidth".ref   = "flake-pinning";
  inputs."eastasianwidth".repo  = "flake-nimble";
  inputs."eastasianwidth".type  = "github";
  inputs."eastasianwidth".inputs.nixpkgs.follows = "nixpkgs";
  inputs."eastasianwidth".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-alignment-v1_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-alignment-v1_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}