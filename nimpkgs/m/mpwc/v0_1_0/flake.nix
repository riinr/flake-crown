{
  description = ''Master Password command line utility'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mpwc-v0_1_0.flake = false;
  inputs.src-mpwc-v0_1_0.owner = "SolitudeSF";
  inputs.src-mpwc-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-mpwc-v0_1_0.repo  = "mpwc";
  inputs.src-mpwc-v0_1_0.type  = "github";
  
  inputs."masterpassword".dir   = "nimpkgs/m/masterpassword";
  inputs."masterpassword".owner = "riinr";
  inputs."masterpassword".ref   = "flake-pinning";
  inputs."masterpassword".repo  = "flake-nimble";
  inputs."masterpassword".type  = "github";
  inputs."masterpassword".inputs.nixpkgs.follows = "nixpkgs";
  inputs."masterpassword".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mpwc-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mpwc-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}