{
  description = ''Scraping API for www.nordnet.dk'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nordnet-v0_0_5.flake = false;
  inputs.src-nordnet-v0_0_5.ref   = "refs/tags/v0.0.5";
  inputs.src-nordnet-v0_0_5.owner = "ThomasTJdev";
  inputs.src-nordnet-v0_0_5.repo  = "nim_nordnet_api";
  inputs.src-nordnet-v0_0_5.type  = "github";
  
  inputs."nmqtt".owner = "nim-nix-pkgs";
  inputs."nmqtt".ref   = "master";
  inputs."nmqtt".repo  = "nmqtt";
  inputs."nmqtt".dir   = "v1_0_4";
  inputs."nmqtt".type  = "github";
  inputs."nmqtt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nmqtt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q".owner = "nim-nix-pkgs";
  inputs."q".ref   = "master";
  inputs."q".repo  = "q";
  inputs."q".dir   = "0_0_8";
  inputs."q".type  = "github";
  inputs."q".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nordnet-v0_0_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nordnet-v0_0_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}