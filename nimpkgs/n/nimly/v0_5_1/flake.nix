{
  description = ''Lexer Generator and Parser Generator as a library in Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimly-v0_5_1.flake = false;
  inputs.src-nimly-v0_5_1.owner = "loloicci";
  inputs.src-nimly-v0_5_1.ref   = "v0_5_1";
  inputs.src-nimly-v0_5_1.repo  = "nimly";
  inputs.src-nimly-v0_5_1.type  = "github";
  
  inputs."patty".owner = "nim-nix-pkgs";
  inputs."patty".ref   = "master";
  inputs."patty".repo  = "patty";
  inputs."patty".dir   = "0_3_4";
  inputs."patty".type  = "github";
  inputs."patty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."patty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimly-v0_5_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimly-v0_5_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}