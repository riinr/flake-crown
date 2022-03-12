{
  description = ''Scraping API for www.nordnet.dk ready to integrate with Home Assistant (Hassio)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nordnet-v0_0_1.flake = false;
  inputs.src-nordnet-v0_0_1.owner = "ThomasTJdev";
  inputs.src-nordnet-v0_0_1.ref   = "refs/tags/v0.0.1";
  inputs.src-nordnet-v0_0_1.repo  = "nim_nordnet_api";
  inputs.src-nordnet-v0_0_1.type  = "github";
  
  inputs."nmqtt".dir   = "nimpkgs/n/nmqtt";
  inputs."nmqtt".owner = "riinr";
  inputs."nmqtt".ref   = "flake-pinning";
  inputs."nmqtt".repo  = "flake-nimble";
  inputs."nmqtt".type  = "github";
  inputs."nmqtt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q".dir   = "nimpkgs/q/q";
  inputs."q".owner = "riinr";
  inputs."q".ref   = "flake-pinning";
  inputs."q".repo  = "flake-nimble";
  inputs."q".type  = "github";
  inputs."q".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nordnet-v0_0_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nordnet-v0_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}