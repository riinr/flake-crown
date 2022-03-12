{
  description = ''Master Password command line utility'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mpwc-master.flake = false;
  inputs.src-mpwc-master.owner = "SolitudeSF";
  inputs.src-mpwc-master.ref   = "refs/heads/master";
  inputs.src-mpwc-master.repo  = "mpwc";
  inputs.src-mpwc-master.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mpwc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mpwc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}