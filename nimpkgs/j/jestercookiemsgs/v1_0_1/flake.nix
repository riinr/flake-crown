{
  description = ''A plugin for Jester that enables easy message passing between web pages using browser cookies.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jestercookiemsgs-v1_0_1.flake = false;
  inputs.src-jestercookiemsgs-v1_0_1.owner = "JohnAD";
  inputs.src-jestercookiemsgs-v1_0_1.ref   = "v1_0_1";
  inputs.src-jestercookiemsgs-v1_0_1.repo  = "jestercookiemsgs";
  inputs.src-jestercookiemsgs-v1_0_1.type  = "github";
  
  inputs."jesterwithplugins".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins".ref   = "master";
  inputs."jesterwithplugins".repo  = "jesterwithplugins";
  inputs."jesterwithplugins".dir   = "v0_5_2";
  inputs."jesterwithplugins".type  = "github";
  inputs."jesterwithplugins".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jestercookiemsgs-v1_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jestercookiemsgs-v1_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}