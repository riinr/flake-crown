{
  description = ''A Jester web plugin that allows easy message passing between pages using a browser cookie.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jestercookiemsgs-master.flake = false;
  inputs.src-jestercookiemsgs-master.owner = "JohnAD";
  inputs.src-jestercookiemsgs-master.ref   = "refs/heads/master";
  inputs.src-jestercookiemsgs-master.repo  = "jestercookiemsgs";
  inputs.src-jestercookiemsgs-master.type  = "github";
  
  inputs."jesterwithplugins".owner = "nim-nix-pkgs";
  inputs."jesterwithplugins".ref   = "master";
  inputs."jesterwithplugins".repo  = "jesterwithplugins";
  inputs."jesterwithplugins".type  = "github";
  inputs."jesterwithplugins".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jesterwithplugins".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jestercookiemsgs-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jestercookiemsgs-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}