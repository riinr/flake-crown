{
  description = ''Self-contained, lightweight, RESTful document store.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-litestore-v1_9_2.flake = false;
  inputs.src-litestore-v1_9_2.ref   = "refs/tags/v1.9.2";
  inputs.src-litestore-v1_9_2.owner = "h3rald";
  inputs.src-litestore-v1_9_2.repo  = "litestore";
  inputs.src-litestore-v1_9_2.type  = "github";
  
  inputs."jwt".owner = "nim-nix-pkgs";
  inputs."jwt".ref   = "master";
  inputs."jwt".repo  = "jwt";
  inputs."jwt".dir   = "master";
  inputs."jwt".type  = "github";
  inputs."jwt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jwt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgen".owner = "nim-nix-pkgs";
  inputs."nimgen".ref   = "master";
  inputs."nimgen".repo  = "nimgen";
  inputs."nimgen".dir   = "v0_5_1";
  inputs."nimgen".type  = "github";
  inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."duktape".owner = "nim-nix-pkgs";
  inputs."duktape".ref   = "master";
  inputs."duktape".repo  = "duktape";
  inputs."duktape".dir   = "master";
  inputs."duktape".type  = "github";
  inputs."duktape".inputs.nixpkgs.follows = "nixpkgs";
  inputs."duktape".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-litestore-v1_9_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-litestore-v1_9_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}