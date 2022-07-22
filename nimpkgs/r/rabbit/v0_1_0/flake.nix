{
  description = ''The Hundred Rabbits theme ecosystem brought to Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-rabbit-v0_1_0.flake = false;
  inputs.src-rabbit-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-rabbit-v0_1_0.owner = "tonogram";
  inputs.src-rabbit-v0_1_0.repo  = "rabbit";
  inputs.src-rabbit-v0_1_0.type  = "github";
  
  inputs."chroma".owner = "nim-nix-pkgs";
  inputs."chroma".ref   = "master";
  inputs."chroma".repo  = "chroma";
  inputs."chroma".dir   = "0_2_6";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-rabbit-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-rabbit-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}