{
  description = ''A wrapper for the keccak-tiny C library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-keccak_tiny-master.flake = false;
  inputs.src-keccak_tiny-master.owner = "status-im";
  inputs.src-keccak_tiny-master.ref   = "refs/heads/master";
  inputs.src-keccak_tiny-master.repo  = "nim-keccak-tiny";
  inputs.src-keccak_tiny-master.type  = "github";
  
  inputs."ranges".dir   = "nimpkgs/r/ranges";
  inputs."ranges".owner = "riinr";
  inputs."ranges".ref   = "flake-pinning";
  inputs."ranges".repo  = "flake-nimble";
  inputs."ranges".type  = "github";
  inputs."ranges".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ranges".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-keccak_tiny-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-keccak_tiny-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}