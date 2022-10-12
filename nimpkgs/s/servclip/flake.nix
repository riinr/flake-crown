{
  description = ''Manage your clipboard remotely'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."servclip-master".dir   = "master";
  inputs."servclip-master".owner = "nim-nix-pkgs";
  inputs."servclip-master".ref   = "master";
  inputs."servclip-master".repo  = "servclip";
  inputs."servclip-master".type  = "github";
  inputs."servclip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."servclip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."servclip-0_4_0".dir   = "0_4_0";
  inputs."servclip-0_4_0".owner = "nim-nix-pkgs";
  inputs."servclip-0_4_0".ref   = "master";
  inputs."servclip-0_4_0".repo  = "servclip";
  inputs."servclip-0_4_0".type  = "github";
  inputs."servclip-0_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."servclip-0_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}