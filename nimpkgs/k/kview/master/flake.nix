{
  description = ''For karax html preview.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-kview-master.flake = false;
  inputs.src-kview-master.owner = "planety";
  inputs.src-kview-master.ref   = "master";
  inputs.src-kview-master.repo  = "kview";
  inputs.src-kview-master.type  = "github";
  
  inputs."karax".owner = "nim-nix-pkgs";
  inputs."karax".ref   = "master";
  inputs."karax".repo  = "karax";
  inputs."karax".dir   = "1_2_1";
  inputs."karax".type  = "github";
  inputs."karax".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-kview-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-kview-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}