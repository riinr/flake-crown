{
  description = ''Self-contained, lightweight, RESTful document store.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-litestore-v1_7_0.flake = false;
  inputs.src-litestore-v1_7_0.ref   = "refs/tags/v1.7.0";
  inputs.src-litestore-v1_7_0.owner = "h3rald";
  inputs.src-litestore-v1_7_0.repo  = "litestore";
  inputs.src-litestore-v1_7_0.type  = "github";
  
  inputs."jwt".owner = "nim-nix-pkgs";
  inputs."jwt".ref   = "master";
  inputs."jwt".repo  = "jwt";
  inputs."jwt".dir   = "master";
  inputs."jwt".type  = "github";
  inputs."jwt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jwt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-litestore-v1_7_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-litestore-v1_7_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}