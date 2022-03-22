{
  description = ''A package to get the MAC address of a local IP address'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-getmac-master.flake = false;
  inputs.src-getmac-master.owner = "PMunch";
  inputs.src-getmac-master.ref   = "master";
  inputs.src-getmac-master.repo  = "getmac";
  inputs.src-getmac-master.type  = "github";
  
  inputs."optionsutils".owner = "nim-nix-pkgs";
  inputs."optionsutils".ref   = "master";
  inputs."optionsutils".repo  = "optionsutils";
  inputs."optionsutils".dir   = "v1_2_0";
  inputs."optionsutils".type  = "github";
  inputs."optionsutils".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optionsutils".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-getmac-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-getmac-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}