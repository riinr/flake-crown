{
  description = ''A DSL to quickly write parsers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-glossolalia-master.flake = false;
  inputs.src-glossolalia-master.ref   = "refs/heads/master";
  inputs.src-glossolalia-master.owner = "fowlmouth";
  inputs.src-glossolalia-master.repo  = "glossolalia";
  inputs.src-glossolalia-master.type  = "github";
  
  inputs."fowltek".owner = "nim-nix-pkgs";
  inputs."fowltek".ref   = "master";
  inputs."fowltek".repo  = "fowltek";
  inputs."fowltek".dir   = "master";
  inputs."fowltek".type  = "github";
  inputs."fowltek".inputs.nixpkgs.follows = "nixpkgs";
  inputs."fowltek".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-glossolalia-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-glossolalia-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}