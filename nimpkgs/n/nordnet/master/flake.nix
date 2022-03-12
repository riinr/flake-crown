{
  description = ''Scraping API for www.nordnet.dk ready to integrate with Home Assistant (Hassio)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nordnet-master.flake = false;
  inputs.src-nordnet-master.owner = "ThomasTJdev";
  inputs.src-nordnet-master.ref   = "refs/heads/master";
  inputs.src-nordnet-master.repo  = "nim_nordnet_api";
  inputs.src-nordnet-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nordnet-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nordnet-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}