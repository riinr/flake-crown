{
  description = ''A command lined based text editor'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-moe-v0_2_4.flake = false;
  inputs.src-moe-v0_2_4.owner = "fox0430";
  inputs.src-moe-v0_2_4.ref   = "v0_2_4";
  inputs.src-moe-v0_2_4.repo  = "moe";
  inputs.src-moe-v0_2_4.type  = "github";
  
  inputs."unicodedb".owner = "nim-nix-pkgs";
  inputs."unicodedb".ref   = "master";
  inputs."unicodedb".repo  = "unicodedb";
  inputs."unicodedb".dir   = "v0_10_0";
  inputs."unicodedb".type  = "github";
  inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."parsetoml".owner = "nim-nix-pkgs";
  inputs."parsetoml".ref   = "master";
  inputs."parsetoml".repo  = "parsetoml";
  inputs."parsetoml".dir   = "v0_6_0";
  inputs."parsetoml".type  = "github";
  inputs."parsetoml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."parsetoml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-moe-v0_2_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-moe-v0_2_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}