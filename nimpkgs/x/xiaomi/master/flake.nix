{
  description = ''Library for working with Xiaomi devices'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-xiaomi-master.flake = false;
  inputs.src-xiaomi-master.ref   = "refs/heads/master";
  inputs.src-xiaomi-master.owner = "ThomasTJdev";
  inputs.src-xiaomi-master.repo  = "nim_xiaomi";
  inputs.src-xiaomi-master.type  = "github";
  
  inputs."multicast".owner = "nim-nix-pkgs";
  inputs."multicast".ref   = "master";
  inputs."multicast".repo  = "multicast";
  inputs."multicast".dir   = "source";
  inputs."multicast".type  = "github";
  inputs."multicast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."multicast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".dir   = "master";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-xiaomi-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-xiaomi-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}