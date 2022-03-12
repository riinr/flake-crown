{
  description = ''API for www.eloverblik.dk'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eloverblik-v0_0_4.flake = false;
  inputs.src-eloverblik-v0_0_4.owner = "ThomasTJdev";
  inputs.src-eloverblik-v0_0_4.ref   = "refs/tags/v0.0.4";
  inputs.src-eloverblik-v0_0_4.repo  = "nim_eloverblik_api";
  inputs.src-eloverblik-v0_0_4.type  = "github";
  
  inputs."nmqtt".dir   = "nimpkgs/n/nmqtt";
  inputs."nmqtt".owner = "riinr";
  inputs."nmqtt".ref   = "flake-pinning";
  inputs."nmqtt".repo  = "flake-nimble";
  inputs."nmqtt".type  = "github";
  inputs."nmqtt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eloverblik-v0_0_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eloverblik-v0_0_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}