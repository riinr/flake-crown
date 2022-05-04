{
  description = ''Cross-platform sound mixer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sound-master.flake = false;
  inputs.src-sound-master.ref   = "refs/heads/master";
  inputs.src-sound-master.owner = "yglukhov";
  inputs.src-sound-master.repo  = "sound";
  inputs.src-sound-master.type  = "github";
  
  inputs."jnim".owner = "nim-nix-pkgs";
  inputs."jnim".ref   = "master";
  inputs."jnim".repo  = "jnim";
  inputs."jnim".dir   = "v0_5_1";
  inputs."jnim".type  = "github";
  inputs."jnim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jnim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-yglukhov-async_http_request".owner = "nim-nix-pkgs";
  inputs."github-yglukhov-async_http_request".ref   = "master";
  inputs."github-yglukhov-async_http_request".repo  = "github-yglukhov-async_http_request";
  inputs."github-yglukhov-async_http_request".dir   = "master";
  inputs."github-yglukhov-async_http_request".type  = "github";
  inputs."github-yglukhov-async_http_request".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-yglukhov-async_http_request".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsbind".owner = "nim-nix-pkgs";
  inputs."jsbind".ref   = "master";
  inputs."jsbind".repo  = "jsbind";
  inputs."jsbind".dir   = "master";
  inputs."jsbind".type  = "github";
  inputs."jsbind".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsbind".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-yglukhov-android".owner = "nim-nix-pkgs";
  inputs."github-yglukhov-android".ref   = "master";
  inputs."github-yglukhov-android".repo  = "github-yglukhov-android";
  inputs."github-yglukhov-android".dir   = "master";
  inputs."github-yglukhov-android".type  = "github";
  inputs."github-yglukhov-android".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-yglukhov-android".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sound-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-sound-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}