{
  description = ''A vim-based editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pvim-0_1_0.flake = false;
  inputs.src-pvim-0_1_0.owner = "paranim";
  inputs.src-pvim-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-pvim-0_1_0.repo  = "pvim";
  inputs.src-pvim-0_1_0.type  = "github";
  
  inputs."paranim".owner = "nim-nix-pkgs";
  inputs."paranim".ref   = "master";
  inputs."paranim".repo  = "paranim";
  inputs."paranim".type  = "github";
  inputs."paranim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paranim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pararules".owner = "nim-nix-pkgs";
  inputs."pararules".ref   = "master";
  inputs."pararules".repo  = "pararules";
  inputs."pararules".type  = "github";
  inputs."pararules".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pararules".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paratext".owner = "nim-nix-pkgs";
  inputs."paratext".ref   = "master";
  inputs."paratext".repo  = "paratext";
  inputs."paratext".type  = "github";
  inputs."paratext".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paratext".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pvim-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pvim-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}