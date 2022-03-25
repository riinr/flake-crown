{
  description = ''HTTP Authentication and Authorization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-httpauth-master.flake = false;
  inputs.src-httpauth-master.ref   = "refs/heads/master";
  inputs.src-httpauth-master.owner = "FedericoCeratto";
  inputs.src-httpauth-master.repo  = "nim-httpauth";
  inputs.src-httpauth-master.type  = "github";
  
  inputs."libsodium".owner = "nim-nix-pkgs";
  inputs."libsodium".ref   = "master";
  inputs."libsodium".repo  = "libsodium";
  inputs."libsodium".dir   = "0_7_1";
  inputs."libsodium".type  = "github";
  inputs."libsodium".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-httpauth-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-httpauth-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}