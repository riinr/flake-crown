{
  description = ''API for www.eloverblik.dk'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eloverblik-v0_0_6.flake = false;
  inputs.src-eloverblik-v0_0_6.ref   = "refs/tags/v0.0.6";
  inputs.src-eloverblik-v0_0_6.owner = "ThomasTJdev";
  inputs.src-eloverblik-v0_0_6.repo  = "nim_eloverblik_api";
  inputs.src-eloverblik-v0_0_6.type  = "github";
  
  inputs."nmqtt".owner = "nim-nix-pkgs";
  inputs."nmqtt".ref   = "master";
  inputs."nmqtt".repo  = "nmqtt";
  inputs."nmqtt".dir   = "v1_0_4";
  inputs."nmqtt".type  = "github";
  inputs."nmqtt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eloverblik-v0_0_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eloverblik-v0_0_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}