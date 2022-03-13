{
  description = ''HTTP Authentication and Authorization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-httpauth-0_3_0.flake = false;
  inputs.src-httpauth-0_3_0.owner = "FedericoCeratto";
  inputs.src-httpauth-0_3_0.ref   = "refs/tags/0.3.0";
  inputs.src-httpauth-0_3_0.repo  = "nim-httpauth";
  inputs.src-httpauth-0_3_0.type  = "github";
  
  inputs."libsodium".owner = "nim-nix-pkgs";
  inputs."libsodium".ref   = "master";
  inputs."libsodium".repo  = "libsodium";
  inputs."libsodium".type  = "github";
  inputs."libsodium".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-httpauth-0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-httpauth-0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}