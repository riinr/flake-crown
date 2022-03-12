{
  description = ''HTTP Authentication and Authorization'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-httpauth-0_1_0.flake = false;
  inputs.src-httpauth-0_1_0.owner = "FedericoCeratto";
  inputs.src-httpauth-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-httpauth-0_1_0.repo  = "nim-httpauth";
  inputs.src-httpauth-0_1_0.type  = "github";
  
  inputs."libsodium".dir   = "nimpkgs/l/libsodium";
  inputs."libsodium".owner = "riinr";
  inputs."libsodium".ref   = "flake-pinning";
  inputs."libsodium".repo  = "flake-nimble";
  inputs."libsodium".type  = "github";
  inputs."libsodium".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-httpauth-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-httpauth-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}