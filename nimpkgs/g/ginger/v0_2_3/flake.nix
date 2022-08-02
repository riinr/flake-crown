{
  description = ''A Grid (R) like package in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ginger-v0_2_3.flake = false;
  inputs.src-ginger-v0_2_3.ref   = "refs/tags/v0.2.3";
  inputs.src-ginger-v0_2_3.owner = "Vindaar";
  inputs.src-ginger-v0_2_3.repo  = "ginger";
  inputs.src-ginger-v0_2_3.type  = "github";
  
  inputs."chroma".owner = "nim-nix-pkgs";
  inputs."chroma".ref   = "master";
  inputs."chroma".repo  = "chroma";
  inputs."chroma".dir   = "0_2_7";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-vindaar-seqmath".owner = "nim-nix-pkgs";
  inputs."github-vindaar-seqmath".ref   = "master";
  inputs."github-vindaar-seqmath".repo  = "github-vindaar-seqmath";
  inputs."github-vindaar-seqmath".dir   = "v0_1_13";
  inputs."github-vindaar-seqmath".type  = "github";
  inputs."github-vindaar-seqmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-vindaar-seqmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cairo".owner = "nim-nix-pkgs";
  inputs."cairo".ref   = "master";
  inputs."cairo".repo  = "cairo";
  inputs."cairo".dir   = "1_1_1";
  inputs."cairo".type  = "github";
  inputs."cairo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cairo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ginger-v0_2_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ginger-v0_2_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}