{
  description = ''A small screenshot library / utility for Windows & X11 based systems.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nsu-v0_1_4.flake = false;
  inputs.src-nsu-v0_1_4.owner = "Senketsu";
  inputs.src-nsu-v0_1_4.ref   = "v0_1_4";
  inputs.src-nsu-v0_1_4.repo  = "nsu";
  inputs.src-nsu-v0_1_4.type  = "github";
  
  inputs."x11".owner = "nim-nix-pkgs";
  inputs."x11".ref   = "master";
  inputs."x11".repo  = "x11";
  inputs."x11".dir   = "";
  inputs."x11".type  = "github";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."oldwinapi".owner = "nim-nix-pkgs";
  inputs."oldwinapi".ref   = "master";
  inputs."oldwinapi".repo  = "oldwinapi";
  inputs."oldwinapi".dir   = "v2_1_0";
  inputs."oldwinapi".type  = "github";
  inputs."oldwinapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."oldwinapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."png".owner = "nim-nix-pkgs";
  inputs."png".ref   = "master";
  inputs."png".repo  = "png";
  inputs."png".dir   = "";
  inputs."png".type  = "github";
  inputs."png".inputs.nixpkgs.follows = "nixpkgs";
  inputs."png".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nsu-v0_1_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nsu-v0_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}