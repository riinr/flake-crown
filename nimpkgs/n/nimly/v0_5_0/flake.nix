{
  description = ''Lexer Generator and Parser Generator as a Macro Library in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimly-v0_5_0.flake = false;
  inputs.src-nimly-v0_5_0.owner = "loloicci";
  inputs.src-nimly-v0_5_0.ref   = "refs/tags/v0.5.0";
  inputs.src-nimly-v0_5_0.repo  = "nimly";
  inputs.src-nimly-v0_5_0.type  = "github";
  
  inputs."patty".dir   = "nimpkgs/p/patty";
  inputs."patty".owner = "riinr";
  inputs."patty".ref   = "flake-pinning";
  inputs."patty".repo  = "flake-nimble";
  inputs."patty".type  = "github";
  inputs."patty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimly-v0_5_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimly-v0_5_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}