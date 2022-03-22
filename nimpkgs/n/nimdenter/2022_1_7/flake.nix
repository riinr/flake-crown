{
  description = ''A tool for people who don't like Nim's indentation-based syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimdenter-2022_1_7.flake = false;
  inputs.src-nimdenter-2022_1_7.ref   = "refs/tags/2022.1.7";
  inputs.src-nimdenter-2022_1_7.owner = "xigoi";
  inputs.src-nimdenter-2022_1_7.repo  = "nimdenter";
  inputs.src-nimdenter-2022_1_7.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_22";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimdenter-2022_1_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimdenter-2022_1_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}