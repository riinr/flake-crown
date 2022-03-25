{
  description = ''A very simple micro web framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mike-1_2_1.flake = false;
  inputs.src-mike-1_2_1.ref   = "refs/tags/1.2.1";
  inputs.src-mike-1_2_1.owner = "ire4ever1190";
  inputs.src-mike-1_2_1.repo  = "mike";
  inputs.src-mike-1_2_1.type  = "github";
  
  inputs."httpx".owner = "nim-nix-pkgs";
  inputs."httpx".ref   = "master";
  inputs."httpx".repo  = "httpx";
  inputs."httpx".dir   = "v0_2_8";
  inputs."httpx".type  = "github";
  inputs."httpx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocketx".owner = "nim-nix-pkgs";
  inputs."websocketx".ref   = "master";
  inputs."websocketx".repo  = "websocketx";
  inputs."websocketx".dir   = "v0_1_2";
  inputs."websocketx".type  = "github";
  inputs."websocketx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocketx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mike-1_2_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-mike-1_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}