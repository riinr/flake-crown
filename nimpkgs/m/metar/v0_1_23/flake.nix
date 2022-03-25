{
  description = ''Metadata Reader for Images'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-metar-v0_1_23.flake = false;
  inputs.src-metar-v0_1_23.ref   = "refs/tags/v0.1.23";
  inputs.src-metar-v0_1_23.owner = "flenniken";
  inputs.src-metar-v0_1_23.repo  = "metar";
  inputs.src-metar-v0_1_23.type  = "github";
  
  inputs."nimpy".owner = "nim-nix-pkgs";
  inputs."nimpy".ref   = "master";
  inputs."nimpy".repo  = "nimpy";
  inputs."nimpy".dir   = "master";
  inputs."nimpy".type  = "github";
  inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-metar-v0_1_23"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-metar-v0_1_23";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}