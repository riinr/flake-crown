{
  description = ''Scraping API for www.nordnet.dk ready to integrate with Home Assistant (Hassio)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nordnet-v0_0_2.flake = false;
  inputs.src-nordnet-v0_0_2.owner = "ThomasTJdev";
  inputs.src-nordnet-v0_0_2.ref   = "refs/tags/v0.0.2";
  inputs.src-nordnet-v0_0_2.repo  = "nim_nordnet_api";
  inputs.src-nordnet-v0_0_2.type  = "github";
  
  inputs."nmqtt".owner = "nim-nix-pkgs";
  inputs."nmqtt".ref   = "master";
  inputs."nmqtt".repo  = "nmqtt";
  inputs."nmqtt".type  = "github";
  inputs."nmqtt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q".owner = "nim-nix-pkgs";
  inputs."q".ref   = "master";
  inputs."q".repo  = "q";
  inputs."q".type  = "github";
  inputs."q".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nordnet-v0_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nordnet-v0_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}